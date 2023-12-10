module network

pub struct IPDestination {
pub mut:
	ipaddress    string
	port         int
	status       BackendStatus
	latency_5min int // in ms
	latency_1h   int // in ms
	latency_24h  int // in ms
	latency_30d  int // in ms
}

pub enum BackendStatus {
	ok
	down
}
