module cloudbox

pub struct Node{
pub mut:
	id string //unique id, is like key of the NFT
	capacity Capacity
	stats Stats
	cloudbox_config CloudBoxConfig
	farmer_id string
}

pub struct CloudBoxConfig{
pub mut:
	nr_cloudboxes_min u32
	nr_cloudboxes_max u32
}
