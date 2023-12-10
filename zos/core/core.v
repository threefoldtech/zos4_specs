module core

import freeflowuniverse.crystallib.data.paramsparser

pub struct VDCRef {
pub mut:
	cid          string   // circle id who owns the vdc
	name         string   // unique name for the VDC
	circle_chain []string // members of the chain for the circle, used for billing, any of them can pay, is []SourceIP
}

pub fn (vdc VDCRef) id() string {
	return '${vdc.cid}:${vdc.name}'
}

pub struct WorkloadRef {
pub mut:
	vdcref      VDCRef
	name        string // unique name in the workload
	params      paramsparser.Params // generic way how to pass params to zos and back, best not to overuse
	description string
}

pub fn (workload WorkloadRef) id() string {
	return '${workload.vdcref.id()}:${workload.name}'
}

pub struct ZOSNode {
pub mut:
	cid string // reference to circle e.g. sj4
	oid string // reference to object id in circle e.g. '3fgs'
}
