module core

import freeflowuniverse.crystallib.data.ourtime

pub fn stat_new(key string) Stat {
	return Stat{
		key: key
	}
}

pub struct Stat {
pub mut:
	key     string
	history StatHistory
	last    ourtime.OurTime
}

pub struct StatHistory {
pub mut:
	min   []u32 // will keep 12 (is per 5min)
	hour  []u32 // will keep 12 (hour)
	day   []u32 // will keep 12
	month []u32 // will keep 12
}

// set value in stat
pub fn (mut s Stat) set(v u32) {
	mut now := ourtime.now()
	if now.unix_time() > s.last.unix_time() + 300 {
		vals_set(mut s.history.min, v)
	}
	if now.unix_time() > s.last.unix_time() + 3600 {
		vals_set(mut s.history.hour, vals_avg(mut s.history.min))
	}
	if now.unix_time() > s.last.unix_time() + (3600 * 24) {
		vals_set(mut s.history.day, vals_avg(mut s.history.hour))
	}
	if now.unix_time() > s.last.unix_time() + (3600 * 24 * 30) {
		vals_set(mut s.history.month, vals_avg(mut s.history.day))
	}
}

fn vals_set(mut vals []u32, v u32) {
	vals << v
	if vals.len > 12 {
		vals.delete(0)
	}
}

fn vals_avg(mut vals []u32) u32 {
	mut tot := 0
	mut counter := 0
	for item in vals {
		tot += item
		counter += 1
	}
	a := tot / counter
	return u32(a)
}
