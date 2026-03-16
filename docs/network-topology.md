# Network Topology

## Overview

The Baby Cloud lab network is designed as a small internal infrastructure environment used to practice Linux system administration networking and container deployment.

The environment is isolatedWithin a virtualized Network and simulates a small production infrastructure.

## Network Layout

Components include:

- Router / Gateway
- RHEL host server
- Internal lab network
- Containerized Services

## Example Structure:
```
Internet
      |
Router / Gateway
      |
Lab Network
      |
RHEL Host
      |--------Containers
      |--------Services	
```
## Future Expansion 

- Additional VM nodes
- Reverse proxy
- Load balancing
- Monitoring stack

