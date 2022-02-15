# Cloud-Physical-Nertwork-Configuration
This repository contains diagrams and scripts for configuring a physical and cloud network.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/grifft709/Cloud-Physical-Nertwork-Configuration/blob/main/Diagrams/cloud_network_diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ploybook file may be used to install only certain pieces of the network, such as Filebeat.

[Filebeat](../Ansible/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology

The network aims to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting large traffic to the network.

- Load Balancers protect against Denial of Service (DoS) attacks. The more visitors to a site increases the chances of a server going down. A load balance prevents that from happening by redirecting traffic to other servers capable of performing the same task. A Jump-box provides a single entry point for traffic entering a network., which allows for traffic monitoring before continuing to the final destination.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the machines and system data.
- Filebeat watches for errors in a system
- Metricbeat records metric for server applications

The configuration details of each machine are displayed below.

| Name     | Functions  | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump-Box | Gateway    | 10.1.0.4   | Linux            |
| Web-1    | Webserver  | 10.1.0.5   | Linux            |
| Web-2    | Webserver  | 10.1.0.6   | Linux            |
| Web-3    | Webserver  | 10.1.0.7   | Linux            |
| VM1      | Log Server/Elk | 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are visible to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 135.23.XX.XX

Machines within the network are only accessible through Jump-box.

- Only the Jump-box docker container can access the Elk VM, VM1. The IP address is 10.1.0.4

A summary of the access policies in place is displayed below.

| Name            | Publicly Accessible | Allowed IP Address |
|-----------------|---------------------|--------------------|
| Jump-Box        | Yes                 | 135.23.XX.XX       |
| Virtual Network | No                  | 10.1.0.4           |
| Webservers      | Yes                 | Any                |
| VM1             | Yes                 | 135.23.XX.XX       |

### Elk Configuration

We used Ansible to automate the configuration of the Elk machines. There was no manual configuration, which is advantageous because...
- Automation is more time-efficient as it allows the configuring of multiple devices that require the same configuration.

The playbook implements the following tasks:

[Elk](../Ansible/install-elk.yml)

- Install Docker
- Install Python3-pip
- Install Pip Docker module
- Increase the memory of the VM
- Install the Elk container image

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker ps](https://github.com/grifft709/Cloud-Physical-Nertwork-Configuration/blob/main/Diagrams/docker.PNG)

### Target Machines & Beats

This ELK server is configured to monitor the following machines:
- 10.1.0.4
- 10.1.0.5
- 10.1.0.6
- 10.1.0.7

We have installed the following Beats on these machines:
- Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects system logs. An example is Syslogs. Metricbeats monitors server applications and collect metric data.

### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the configuration file to the remote machine 
- Update the configuration file to include to include the host IP or FQDN
- Run the playbook, and navigate to the remote machine to check that the installation worked as expected. Depending on what is being installed the systemctl can be used to check that service is running.
