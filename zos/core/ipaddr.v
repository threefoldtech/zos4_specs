module core

//````
// - 192.168.6.6
//   - an ip address, without specified class and port
// - 192.168.6.6/24
//   - an ip address and we specify the class
// - 192.168.6.0/24
//   - this is a range, not one ip address
//   - has 255 addr inside
// - localhost:7777
//   - specific port on localhost
// - 192.168.6.6:7777
// - 192.168.6.6:7777/24
//   - this means we know its a class C and its a specific IP address with defined port
// - ipv6: [x:x:x:x:x:x:x:x]:port
// - ipv6: x:x:x:x:x:x:x:x
// - ipv6: x::x/96
//````
pub struct IPAddr {
pub mut:
	ipaddr string
}

// TODO: need some tooling around it, maybe can leverage crystallib

//````
// - ipv6: [x:x:x:x:x:x:x:x]:port
// - ipv6: x:x:x:x:x:x:x:x
// - ipv6: x::x/96
//````
pub struct IPAddr6 {
pub mut:
	ipaddr string
}

// check format
// [openrpc skip]
pub fn (addr IPAddr6) check() ! {
	// do check of validity, if not ok raise error
}

// return true if in range of mycelium
// [openrpc skip]
pub fn (addr IPAddr6) mycelium() bool {
	return false
}

// TODO: see with lee
