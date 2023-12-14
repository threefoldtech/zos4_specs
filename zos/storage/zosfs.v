module storage

import threefoldtech.zos.core

pub struct ZOSFS {
pub mut:
	workload core.Workload
	flist    Flist
}

pub struct Flist {
pub mut:
	url        string // url where the flist can be found
	blake_hash string // hex format for blake hash of the resulting flist
}

pub fn zosfs_create(args ZOSFS) bool {
	return true
}

pub fn zosfs_delete(wlref string) bool {
	return true
}

pub fn zosfs_get(wlref string) ZOSFS {
	return ZOSFS{}
}

pub fn zosfs_list() []ZOSFS {
	return []ZOSFS{}
}

pub struct ZOSFSMount {
pub mut:
	zosfs ZOSFS
	mount string    // location where it is mounted in VM
	reset bool      // if true will reset any existing system underneith mount
	type_ MountType // can be read/copyonwrite
}

// mount an existing or to be created new ZOSFSMount onto a VM .
// only 1 can do rw, more can mount readonly .
pub fn zosfs_mount(mount ZOSFSMount) bool {
	return true
}

// remove a mount
pub fn zosfs_mount_delete(wlref string) bool {
	return true
}

pub fn zosfs_mount_get(wlref string) ZOSFSMount {
	return ZOSFSMount{}
}

pub fn zosfs_mounts_list(args core.VDCSelectionArgs) []ZOSFSMount {
	return []ZOSFSMount{}
}
