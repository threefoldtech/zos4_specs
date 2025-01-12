module network

import threefoldtech.zos.core

pub struct IPReservation {
pub mut:
	workload core.Workload
	ip       []core.IPAddr
	ip6      []core.IPAddr6
}

// will fail if the WebGWRule already exists
pub fn ip_reservation_create(reserv IPReservation) bool {
	return true
}

pub fn ip_reservation_delete(wlref string) bool {
	return true
}

pub fn ip_reservation_get(wlref string) IPReservation {
	return IPReservation{}
}

// list all the known webgws which you have rights on
pub fn ip_reservation_list(args core.VDCSelectionArgs) []IPReservation {
	return []IPReservation{}
}
