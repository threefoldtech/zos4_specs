module core

@[params]
pub struct RightsArgs {
pub mut:
	vdcref []string  // vdcref is  ```$cid:$vdcname```
	wlrefs []string  // wlref is  ```$cid:$vdcname:$workloadname```
	acls   []ACL     // optional: need to use ipaddr or acl(s)
	admins []IPAddr6 // ipaddr access is always full admin access
}

// add secrets to a set of workloads or vdc's, this allow anyone to manipulate that workload later .
// only people with admin rights or the source ip addr (mycelium) which was used or added can execute .
// the rights given are on all vdc's and workloads, if vdc then on all workloads in vdc .
// return true if ok .
pub fn rights_set(args RightsArgs) bool {
	return true
}

pub struct ACL {
pub mut:
	secrets []string
	right   Right // write includes read, delete includes write and read, admin is all
}

pub enum Right {
	read
	write
	delete
	admin
}
