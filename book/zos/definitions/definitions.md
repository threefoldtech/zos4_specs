## Definitions

- ZOS = Zero-OS our operating system
- Request = a json rpc request as send over mycelium
- SourceIP = source ip where Request comes from
- Agent = knows how to deal with Requests 
- ZOSAgent = Agent running on Zero-OS or supported operating system which can run the workloads
- ZOSBM = ZOS as Installed on Bare Metal (how we do today)
- User = SourceAgent (agent who sends Request to other Agent) or a user through their 3Bot
- Workload = a service as managed by ZOSAgent
- Mycelium = our super duper overlay networking tech
- ZOSFS = was called flist before, is a copy on write filesystem starting from a FList
- FList = description of files and its metadata as used by ZOSFS
