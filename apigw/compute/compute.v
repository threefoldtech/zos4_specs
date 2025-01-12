module compute

import threefoldtech.zos.core
import threefoldtech.zos.storage

pub struct VM {
pub mut:
	workload     core.Workload
	name         string // network name
	description  string // network description
	zosfs_mounts []storage.ZOSFSMount // how ZOSFS mounts are linked to VM
	disk_mounts  []storage.DiskMount
	// networks     	[]   	//
	entrypoint string // vm entry point
	env        map[string]string // {"key":"value"}
	corex      bool // vm corex
	// gpus       []GPU // ["vm list of gpus"]
	users  ?Users
	status VMStatus
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
pub fn vm_delete(wlref string) bool {
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

pub fn vm_list(args core.VDCSelectionArgs) []VM {
	return []VM{}
}

// wlref is $cid:$vdcname:$workloadname
pub fn vm_delete(wlref string) bool {
	return true
}
