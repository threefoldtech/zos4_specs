# Roadmap

## Milestone 1: ZOS 4.0.0 A1

- ZOS 4.0 Agent
  - P2P 
  - OpenAPI driven
  - well documented API
  - examples how to use from 3script & Vlang directly using the OpenRPC interface
  - features see ZOS Specs
- TFGrid 4.0.0 A1
  - There is no blockchain or consensus mechanism yet.
  - All metadata is stored on a git account e.g. available nodes, capacity, ...
- Nested Virtualization
  - we can test 4.0.0 inside TFGrid 3.x inside large VM's
  - example scripts how to deploy such VM's and attach to IPV6 or IPV4
  
Whats not inside

- no billing, all is free for everyone
- no power management for nodes
- no ZOS bare metal


## Milestone 2: ZOS 4.0.0 A2

- 3Bot 4.0
  - VLang based, messages over Mycelium
  - driver for workloads on ZOS 4.0
    - easy ways how to deploy and manage workloads on ZOS 4.0.0 A1
  - OpenRPC tools
    - generate openapi spec
    - generate client/server in vlang
    - generate client/server in rust
  - OpenAPI tools
    - generate client in vlang starting from OpenAPI Spec
  - Integration with public LLM and opensource LLM (privately used)
    - Integration with vector database
  - ZOS client in V, easy to use
    - 3Script as well
  - Circle Management
    - members & roles
    - tasks, projects, milestones, stories, ...
    - backend with openrpc interface only (no UI)
  - P2P chat over mycelium
    - backend with openrpc interface only (no UI)
  - P2P calendar mgmt
    - backend with openrpc interface only (no UI)
  - mdbook, zola site generation
    - starting from git on gitea
    - 3script can drive all
    - backend with openrpc interface
    - feed into personal AI cloud