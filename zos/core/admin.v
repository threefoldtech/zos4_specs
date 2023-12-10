module core

// add secrets to a set of workloads, this allow anyone to manipulate that workload later .
// return true if ok .
// only people with admin rights or the source ip addr (mycelium) which was used or added can execute
pub fn workload_rights_set(workloads []WorkloadRef, acl ACL) bool {
	return true
}

// add ipaddr which will become admin
// return true if ok .
// only people with admin rights or the source ip addr (mycelium) which was used or added can execute .
// ip addr are: mycelium ip addr which will get amdin rights
pub fn workload_admin_add(workloads []WorkloadRef, ipaddr []string) bool {
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
