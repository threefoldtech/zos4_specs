# zos core functions & model

## principles

- Every user (3bot) who asks for a workload comes over mycelium and send sends the jsonrpc request over mycelium to the relevant ZOS or other node which understands how to process these requests.
- Each entity which can process a jsonrpc request is called a Agent.
- An Agent will remember who did the request based on source ip address from myceliym.
- The Agent will execute on the request and one or more workloads can be created or changed.
- A Workload is a service we requested from an Agent, through the jsonrpc we can manage these workloads.


## terms

- ZOS = Zero-OS our operating system
- Request = a json rpc request as send over mycelium
- SourceIP = source ip where Request comes from
- Agent = knows how to deal with Requests 
- ZOSAgent = Agent running on Zero-OS
- ZOSBM = ZOS as Installed on Bare Metal (how we do today)
- User = SourceAgent (agent who sends Request to other Agent) or a user through their 3Bot
- Workload = a service as managed by ZOSAgent
- Mycelium = our super duper overlay networking tech
- ZOSFS = was called flist before, is a copy on write filesystem starting from a FList
- FList = description of files and its metadata as used by ZOSFS

## ZOSAgent can run on more than ZOS

ZOSAgent can run on Ubuntu +22.04 (maybe later gentoo) as well as ZOSBM.

ZOSAgent will have different functionaly depending the requirements but at start we have

- compute
  - VM's
- storage
  - ZDB
  - ZDisks = Partitions (with caching of bcrypt) (attach to VM)
  - QSFS = our Quantum Safe Filesystem (attach to VM)
  - ZOSFS = our ownerlay filesystem
- network
  - mycelium
  - wireguard
- webgw
  - dns
  - https proxy to mycelium (forward of encrypted SSL, terminated or not)

## rights management

Each User is linked to a SourceIP, if workloads are created as result of the Request, the Agent will remember who requested the Workload and will make sure this User is admin over this workload.

The User can now add secrets to it to give specific rights (see workload_rights_set() and workload_admin_add()), this can allow other Users to get acces or through nothing more than a secret or linked to SourceIP.

## id's

- wlref: is for ```$cid:$vdcname:$workloadname```  
  - is unique in the world because cid is unique
  - name's are always name_fixed (lower case, only _, no special chars)