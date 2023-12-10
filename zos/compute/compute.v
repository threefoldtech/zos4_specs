module compute

import threefoldtech.zos.core

pub struct VM {
pub mut:
	workload     core.WorkloadRef
	name         string       // network name
	description  string       // network description
	zosfs_mounts []ZOSFSMount // how ZOSFS mounts are linked to VM
	disk_mounts  []DiskMount
	// networks     	[]   	//
	entrypoint string // vm entry point
	env        map[string]string // {"key":"value"}
	corex      bool  // vm corex
	gpus       []GPU // ["vm list of gpus"]
	users      ?Users
	status     VMStatus
}

pub enum VMStatus {
	init
	running
	error
	halted
	deleted
}

pub struct Users {
pub mut:
	keys []User
}

pub struct User {
pub mut:
	sshkeys []string // form is : '$type $key $email'
	user    string = 'root' // user this key will be deployed for, if user doesn't exist will be created
}

// if users don't exist, will create them and make sure their sshkeys are on authorized...
pub fn vm_create(vm VM) bool {
	return true
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_delete(vm VM) bool {
	return true
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_stop(wlref string) bool {
	return true
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_start(wlref string) bool {
	return true
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_restart(wlref string) bool {
	return true
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_get(wlref string) VM {
	return VM{}
}

pub fn vm_list() []VM {
	return []VM{}
}
