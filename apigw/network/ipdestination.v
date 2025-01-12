module network

import threefoldtech.zos.core

pub struct IPDestination {
pub mut:
	ipaddress core.IPAddr6
	port      int
	status    BackendStatus
}

pub enum BackendStatus {
	ok
	down
}
