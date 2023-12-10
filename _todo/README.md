# ZOS

## special fields

### ip address and network

different valid formats

- 192.168.6.6 
  - an ip address, without specified class and port
- 192.168.6.6/24
  - an ip address and we specify the class
- 192.168.6.0/24
  - this is a range, not one ip address
  - has 255 addr inside
- localhost:7777
  - specific port on localhost
- 192.168.6.6:7777
- 192.168.6.6:7777/24 
  - this means we know its a class C and its a specific IP address with defined port
- ipv6: [x:x:x:x:x:x:x:x]:port 
- ipv6: x:x:x:x:x:x:x:x
- ipv6: x::x/96

one format can specify network range, port as well as ip address itself

## generation

V OpenRPC ZOS client and document generator.

The openrpc document is generated from the client method prototypes. The goal is to easily generate the OpenRPC specs for ZOS, and also have a client in V. To change and regenerate the OpenRPC document, simply change client functions, install the [OpenRPC CLI](../openrpc/README.md) and run 

```bash
openrpc docgen -t "Zero OS OpenRPC API" -o generated methods.v
```

`openrpc docgen -help` for more info. 

Read more about OpenRPC Document generation at [crystallib.core.openrpc](../openrpc/README.md)



- [playground](https://playground.open-rpc.org/?uiSchema%5BappBar%5D%5Bui:splitView%5D=false&schemaUrl=https://raw.githubusercontent.com/freeflowuniverse/crystallib/development_db/research/zos/generated/openrpc.json&uiSchema%5BappBar%5D%5Bui:input%5D=false)


Can also manual use the playground: https://playground.open-rpc.org/ and copy paste the openrpc.json document in it.

