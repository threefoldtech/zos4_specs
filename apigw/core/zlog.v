module core

import freeflowuniverse.crystallib.data.ourtime

pub struct Zlogs {
pub mut:
	wlref string // identifies for which workload it is
	log   []Zlog
}

pub struct Zlog {
pub mut:
	msg   string
	time_ u64 // epoch timestamp
}

@[params]
pub struct LogGetArgs {
pub mut:
	from_time ourtime.OurTime
	to_time   ourtime.OurTime
	wlref     string    // is reference to a workload to get logs from
	targets   []IPAddr6 // ipaddresses which will receive the log (from query or as tail)
}

// if targets set, then will return empty ZLogs and push the logs to the targets over mycelium
pub fn logs_get(args LogGetArgs) Zlogs {
	return Zlogs{}
}

// ask zos to send all logs as they happen to the ipaddresses as mentioned
pub fn logtail_set(args LogGetArgs) bool {
	return true
}
