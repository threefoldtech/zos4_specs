
## Tech Choices

We need more simplicity and as such need to make some strong choices and stick with it.

### RUST as systems language

- anything low level e.g. storage system, network system, ... needs to be in Rust

### VLANG as automation language

- 3bot as base to deploy & manage the environment

### AI Integration through Python in 3Bot

- 3Bot can wrap python and use it to do necessary actions which would be hard in other language.
- we never use python directly, its always wrapped

### Hero is our swiss army knive

- Hero is a cmd line developed in Vlang, it knows how to execute on a lot of your system administration duties.
- Hero knows how to interprete 3Script and can execute on specified actions.
- Hero knows how to collaborate wiht Arch packaging and building system.

### ARCH (chosen linux)

- ALL builds happend through Arch build system but assisted by Hero & 3Script
- The EBuilds of Arch are our base but they can be extended by Vlang Scripts and are called from the builds
- Everything we have created is available as a package in arch, we have our own git based library of packages.

### Mycelium as Network and Message Bus

- we no longer use the current RMB, all communication is natively done over Mycelium messages
- each agent has 
