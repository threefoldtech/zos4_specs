module storage

import threefoldtech.zos.core

pub struct VDisk {
pub mut:
	workload     core.Workload
	ssd_disks    []DiskBackend // only SSD disks
	hdd_backends []DiskBackend // in caching scenario
	thin         bool // if set means it is an image as put on SSD disk (thin stands for thin provisioning)
	fs_type      FSType
}

pub enum FSType {
	raw
	btrfs
}

// SSD is min 50 GB of space .
// HDD is min 1 TB of space and min 10% of a HDD .
// HDD can only be used as backend for VDisk on SSD, min 2% needs to be on SSD in relation to backend
pub struct DiskBackend { // id a partition on a HDD/SSD
pub mut:
	disk_id   string // corresponds to id's as we get from DiskStat
	size_gb   u16
	dedicated bool // if the disk should be dedicated (means no other user can claim parts of the backend)
	type_     DiskType
}

pub enum DiskType {
	ssd
	hdd
}

pub fn vdisk_new(vdisk VDisk) bool {
	return true
}

pub fn vdisk_delete(wlref string) bool {
	return true
}

pub fn vdisk_delete(wlref string) bool {
	return true
}

pub fn vdisk_get(wlref string) VDisk {
	return VDisk{}
}

// list all the known vdisks which you have rights on
pub fn vdisks_list(args core.VDCSelectionArgs) []VDisk {
	return []VDisk{}
}

pub struct DiskMount {
pub mut:
	disk  VDisk
	mount string // location where it is mounted in VM
	reset bool   // if true will reset any existing system underneith mount
	type_ MountType
}

enum MountType {
	rw
	read
	copyonwrite // means we can make changes but not to the underlying one
}

// mount an existing or to be created new ZOSFSMount onto a VM .
// only 1 can do rw, more can mount readonly .
// QUESTION: can this be done with up and running VM?
pub fn disk_mount(args DiskMount) bool {
	return true
}

pub fn disk_mount_delete(wlref string) bool {
	return true
}

pub fn disk_mount_get(wlref string) DiskMount {
	return DiskMount{}
}

// list all the known mounts which you have rights on
pub fn disk_mounts_list(vdc_id string) []DiskMount {
	return []DiskMount{}
}

pub struct VDisksInfo {
pub mut:
	disks []VDisk
}

// all VDisks which on which the caller has at least read rights will be returned
pub fn vdisks_info() VDisksInfo {
	return VDisksInfo{}
}

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////DISKS INFO//////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

pub struct DisksStat {
pub mut:
	disks []DiskStat
}

pub struct DiskStat {
pub mut:
	zos_node  core.ZOSNode
	disk_id   string // unique identification of disk in the zos
	size_gb   u16
	used      u8 // in percentage 0..100
	type_     DiskType
	info      string     // information as can be retrieved from the SSD or HD through the OS
	smartinfo ?SMARTInfo // info as returned from smart stats (is optional)
}

// get the statistics of all available disks .
// everyone can have this information
pub fn disks_stat() ?DisksStat {
	ds := DisksStat{}
	return ds
}
