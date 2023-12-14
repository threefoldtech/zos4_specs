module zos

// import 



[params]
pub struct WGNetwork {
pub mut:
	vdc					  VDCRef
	name                  string // network name
	description           string // network description
	ip_range              IPAddr  // network subnet
	nodes                 []WGNode //all nodes which make up the wiregard network
}

//is a wireguard node which is responsible for letting people in & out of the network
struct WGNode {
	node_id				  ZOSNode //link to up & running ZOSNode
	wireguard_private_key string // network private key
	wireguard_listen_port u16    // network listen port
}

//see which WGNodes need to be created .
//only create for the zos who receives this message .
pub fn  wgnetwork_create(args WGNetwork) !Result {
}


pub fn  wgnetwork_delete(args WGNetwork) Result {
}

//network needs to exist, update the network config
pub fn  wgnetwork_update(args WGNetwork) Result {
}


/////// network scan for wireguard overlay network

pub struct ResultWGNetworkScan {
pub mut:
	wgnetwork		      WGNetwork	//return the object so we know what is being scanned
	node_ref		      NodeRef 	//the node which is doing the scan
	nodes                 []WGNodeScan //all nodes which make up the wiregard network
}

pub struct WGNodeScan {
pub mut:	
	node_id				  ZOSNode //link to up & running ZOSNode
	ping				  bool //true means the node was reachable and did reply on the wireguard check
	latency               u32 //in ms, how much was latency for the ping 				  	
}


//do a scan on the network, return status of what is being found .
// returns the following:
// ```
// struct ResultWGNetworkScan {
// 	wgnetwork		      WGNetwork	//return the object so we know what is being scanned
// 	node_ref		      NodeRef 	//the node which is doing the scan
// 	nodes                 []WGNodeScan //all nodes which make up the wiregard network
// }
// struct WGNodeScan {
// 	node_id				  ZOSNode //link to up & running ZOSNode
// 	ping				  bool //true means the node was reachable and did reply on the wireguard check
// 	latency               u32 //in ms, how much was latency for the ping 				  	
// }
// ```
pub fn  wgnetwork_verify(args WGNetwork) ResultWGNetworkScan {
}
