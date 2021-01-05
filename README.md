# Cloud-Physical-Nertwork-Configuration
This repository contains diagrams and scripts for configuring a physical and cloud network. For more detail refer to the README.

The files in this repository were used to configure the network depicted below.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](https://github.com/grifft709/Cloud-Physical-Nertwork-Configuration/blob/main/Diagrams/cloud_network_diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

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
- Filebeat watches for errors with a system
- Metricbeat records metric for server apllications

The configuration details of each machine are displayed below.

| Name     | Functions  | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump-Box | Gateway    | 10.1.0.4   | Linux            |
| Web-1    | Webserver  | 10.1.0.5   | Linux            |
| Web-2    | Webserver  | 10.1.0.6   | Linux            |
| Web-3    | Webserver  | 10.1.0.7   | Linux            |
| VM1      | Log Server | 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 135.23.XX.XX

Machines within the network can only be accessed by Jump-Box.
- Only the Jump-Box ansible container can access VM1, the Elk VM. The IP address is 10.1.0.4

A summary of the access policies in place is displayed below.

| Name            | Publicly Accessible | Allowed IP Address |
|-----------------|---------------------|--------------------|
| Jump-Box        | Yes                 | 135.23.XX.XX       |
| Virtual Network | No                  | 10.1.0.4           |
| Webservers      | Yes                 | Any                |
| VM1             | Yes                 | 135.23.XX.XX       |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Automation is more time efficient as it allows for multiple devices requiring the same applications to be configured at the same time.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ... Become the root user as to not get prompted for password.
- ...Install docker container. Elk will be installed on the container
-… Install python3-pip
-…Install pip docker module
-…Increase the memory of the VM  

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




