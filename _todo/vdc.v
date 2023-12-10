module zos


//represents a unique VDC object in a defined VDC
[params]
pub struct VDCObjectRef {
pub mut:	
	gid string //global id in format $cid.$oid e.g. aaa.bbb, cid is for circle, oid = is the unique id in circle
	name string //unique name of the object inside the VDC
}


//represents a VDC
pub struct VDC {
pub mut:	
	gid string //global id in format $cid.$oid e.g. aaa.bbb, cid is for circle, oid = is the unique id in circle
	description string //optional
	acl []ACL
}


//access control list
pub struct ACL {
pub mut:	
	name string //can give a name to an ACL
	description string
	members []Member
	right MemberRight
}

pub struct Member {
pub mut:
	sourceip6 string //public ipv6 address where the member can come from (mycelium is used)	
	right MemberRight
	log bool //if this member wants to receive logging
	admin bool //if this member has access to information which might be relevant for this VDC
}

pub enum MemberRight{
	none 
	read 
	write
	admin //means we can add/modify members	
}
