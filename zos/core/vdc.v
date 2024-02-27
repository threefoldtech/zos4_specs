module core

import freeflowuniverse.crystallib.data.paramsparser

// create a VDC object
pub fn vdc_new(cid string, name string) VDC {
	return VDC{
		cid: cid
		name: name
	}
}

// metadata: is Params struct which can be represented as string: color:red urgent location:'gent'
pub struct VDC {
pub mut:
	cid          string // circle id who owns the vdc (eg.  a5g)
	name         string // unique name for the VDC (name_fix)
	metadata     paramsparser.Params // generic way how to pass params to zos and back, best not to overuse
	acls         []ACL     // optional: need to use ipaddr or acl(s)
	admins       []IPAddr6 // ipaddr access is always full admin access
	billing 	 []IPAddr6  // members of circle responsible for this VDC, these are the guys who can pay
}

pub fn (vdc VDC) vdcref() string {
	return '${vdc.cid}:${vdc.name}'
}

// set the vdc, will overwrite existing one
// only admin's can overwrite
pub fn vdc_set(vdc VDC) bool {
	return true
}

pub fn vdc_delete(vdcref string) bool {
	return true
}

// will list all vdc's which are known to the admin requesting (only uses ipaddr as check)
pub fn vdc_list() []VDC {
	return []VDC{}
}

// move workload from one vdc to other .
// te wlref is at the vdc source
pub fn (mut vdc VDC) vdc_workload_move(wlref string, dest_vdcref string) bool {
	return true
}
