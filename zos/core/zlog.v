module core

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
	from_time string
	to_time   string
	wlref     string   // is reference to a workload to get logs from
	targets   []string // ipaddresses which will receive the logs
}

// if targets set, then will return empty ZLogs and push the logs to the targets over mycelium
pub fn logs_get(args LogGetArgs) Zlogs {
	return Zlogs{}
}

// ask zos to send all logs as they happen to the ipaddresses as mentioned
pub fn logtail_set(args LogGetArgs) bool {
	return true
}
