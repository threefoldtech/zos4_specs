# Socks 5 support for Mycelium

- 1 or 2 level socks5 servers
- 1 level means mycelium agent has socks5 inside and can go to internet
- 2 level means mycelium agent has socks5 and will use other socks5 server as outgoing one
- configuration defines which 2e level socks5 to use and under which conditions
  - for all workloads
  - for set of pcre filtered ones e.g. mmm.* to mycelium (default)
- can support more than 1 2e level socks5 server as backend

## Why

- this allows people to use Mycelium as VPN service for browsing of the internet.
- mycelium can chose multiple networks if one is down, reliability for the user 
- ability to consult content on mycelium even if local TUN is not working

