module storage

import threefoldtech.zos.core

struct ZDB {
	workload    core.WorkloadRef
	namespace   string
	password    string
	mode        ZDBMode // zdb mode
	size_gb     int     // zdb size in GB
	public      bool    // if zdb gets a public ip6
	mycelium    bool    // if connected to mycelium
	public_ip   string  // if we own already the ip addr, then we can specify it, if the node has access to it
	mycelium_ip string  // if we own already the ip addr, then we can specify it, if the node has access to it
}

pub enum ZDBMode {
	// TODO
	seq
	keys
}

pub fn zdb_create(args ZDB) bool {
	return true
}

// will update, cannot modify mode or namespace name .
// can change the ip addresses, if not chosen then zos will chose for us
pub fn zdb_update(args ZDB) bool {
	return true
}

pub fn zdb_delete(wlref string) bool {
	return true
}

pub fn zdb_get(wlref string) ZDB {
	return ZDB{}
}

// list all the known zdbs which you have rights on
pub fn zdbs_list(args core.VDCSelectionArgs) []ZDB {
	return []ZDB{}
}
