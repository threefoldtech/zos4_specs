module core

import freeflowuniverse.crystallib.data.paramsparser

// create a VDC object
pub fn workload_new(cid string, name string) VDC {
	return VDC{
		cid: cid
		name: name
	}
}

pub struct Workload {
pub mut:
	vdcref      VDC
	name        string // unique name in the VDC for the workload
	metadata    paramsparser.Params // generic way how to pass params to zos and back, best not to overuse
	description string
	acls        []ACL     // optional: need to use ipaddr or acl(s)
	admins      []IPAddr6 // ipaddr access is always full admin access
}

pub fn (workload Workload) vdcref() string {
	return '${workload.vdcref.vdcref()}:${workload.name}'
}

// if workload needs to be deleted, this will also destroy the service behind e.g. a vm
pub fn workload_delete(vdcref string) bool {
	return true
}
