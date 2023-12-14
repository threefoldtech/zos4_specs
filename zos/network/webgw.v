module network

import threefoldtech.zos.core

pub struct WebGWRule {
pub mut:
	workload        core.Workload
	fqdn            []string        // fqdn TODO: format?
	tls_passthrough bool            // tls passthrough is optional
	backends        []IPDestination // where does the traffic get terminated
	// if we want custom ipaddr to the service
	public      bool   // if webgw gets a public ip6
	mycelium    bool   // if connected to mycelium
	public_ip   string // if we own already the ip addr, then we can specify it, if the node has access to it
	mycelium_ip string // if we own already the ip addr, then we can specify it, if the node has access to it
}

// will fail if the WebGWRule already exists
pub fn webgw_create(args WebGWRule) bool {
	return true
}

// will update what is possible
pub fn webgw_update(args WebGWRule) bool {
	return true
}

pub fn webgw_delete(wlref string) bool {
	return true
}

pub fn webgw_get(wlref string) WebGWRule {
	return WebGWRule{}
}

// list all the known webgws which you have rights on
pub fn webgws_list(args core.VDCSelectionArgs) []WebGWRule {
	return []WebGWRule{}
}
