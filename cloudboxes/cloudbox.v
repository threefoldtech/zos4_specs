module cloudbox

pub struct Cloudbox{
pub mut:
	id string //unique id, is like key of the NFT
	capacity Capacity
	stats Stats
	ownership ?Ownership

}

pub struct Capacity{
pub mut:
	cpu_cores u32
	mem_gb u32
	ssd_gb u32
	passmark u32
}

pub struct Stats{
pub mut:
	uptime_perc u8 //0..100
}

pub struct Ownership{
pub mut:
	owners []string //pubkeys of people who own the CloudBox
	admin bool //if admin then can operate the cloudbox, start, stop, ...
}
