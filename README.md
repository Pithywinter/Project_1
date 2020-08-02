# Project_1
Vanderbilt Network Project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.
/c/Users/revol/Project_1/Diagrams/Project_Diagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.
/c/Users/revol/Project_1/Ansible

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting traffic to the network.
The aspect of security that load balancers protect is availability. The advantage of a jump box is that it prevents other virtual machines on the network from exposure, and its capability for redundancy.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the server and system logs.
Filebeat watches for log files.
Metricbeat records metrics from the operating system.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web_1    | DVWA     | 10.0.0.5   | Linux            |
| Web_2    | DVWA     | 10.0.0.6   | Linux            |
| Project-VM| Elk     | 10.2.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
68.47.162.2

Machines within the network can only be accessed by Jump Box.
Web_1 machine is allowed to access the ELK VM. Its IP address is 10.0.0.5.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 10.0.0.5 10.0.0.6    |
| Web_1    | no                  | 10.0.0.6 10.2.0.4    |
| web_2    | no                  | 10.0.0.5             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it reduces cognative load.

The playbook implements the following tasks:
-  Install Docker 
-  Configure image
-  Install python3
-  Increase virtual memory
-  Download and launch a docker Elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

/c/Users/revol/ Project_1/Diagrams/elk_ps.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5 
- 10.0.0.6

We have installed the following Beats on these machines:
- Filebeats
- Metricbeats

These Beats allow us to collect the following information from each machine:
- Filebeats looks for log files.
- Metricbeats looks for system metrics data.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the yaml file to Jump Box.
- Update the host file to include your internal IP address.
- Run the playbook, and navigate to Project-VM to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? pentest.yml Where do you copy it? /c/Users/revol/ Project_1/Ansible/pentest.yml
- _Which file do you update to make Ansible run the playbook on a specific machine? host How do I specify which machine to install the ELK server on versus which to install Filebeat on? On host in playbook.
- _Which URL do you navigate to in order to check that the ELK server is running? http://[your Elk external IP]:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
sudo apt-get upgrade
sudo apt-get update
sudo apt install docker.io
sudo systemctl start docker
sudo docker pull cyberxsecurity/ansible
sudo docker run -ti cyberxsecurity/ansible:latest bash
sudo docker container list -a
sudo docker start [VM container name]
sudo docker attach [VM container name]
sudo docker run -it cyberxsecurity/ansible/bin/bash
sysctl -w vm.max_map_count=262144
curl localhost/setup.php
 filebeat modules enable system
 filebeat setup
 service filebeat start






