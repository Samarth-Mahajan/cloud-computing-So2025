# cloud-computing-So2025

### Project Members:
Samarth Omkar Mahajan- 1533213
Shambhavi Santosh Hupare-1534137

### Division of Work
Samarth Omkar Mahajan (1533213)
    •	Designed and configured the Networking Infrastructure using Terraform:
         o	Created the VPC, public subnets, Internet Gateway, and route tables.
    •	Defined Security Groups for:
        o	Application Load Balancer (ALB)
        o	EC2 instances (HTTP from ALB and SSH from anywhere)
    •	Created and configured the Application Load Balancer (ALB).
    •	Set up CloudWatch alarms and scaling policies for CPU-based auto-scaling.

Shambhavi Santosh Hupare (1534137)
    •	Developed the Launch Template with user data to install and configure the Apache web server on EC2 instances.
    •	Defined the Auto Scaling Group (ASG) to manage EC2 instances across Availability Zones.
    •	Managed the outputs in Terraform (DNS name, ASG name, VPC ID, etc.).
    •	Documented the project structure, including:
        o	main.tf, terraform.tfvars, .gitignore
        o	Usage instructions and prerequisites
    •	Designed and included the Architecture Diagram in the report.


# Scalable Web Application Infrastructure on AWS with Terraform
Overview
This project provisions a highly available, scalable web application infrastructure on AWS using Terraform. It is designed to demonstrate Infrastructure as Code (IaC) best practices, enabling automated, repeatable, and consistent cloud deployments.
Features
VPC: Custom Virtual Private Cloud for network isolation.
Public Subnets: Two public subnets across multiple Availability Zones for high availability.
Internet Gateway: Enables internet access for resources in public subnets.
Route Table: Configured for public internet access.
Security Groups:
For the Application Load Balancer (ALB) to allow HTTP traffic.
For EC2 instances to allow HTTP from ALB and SSH from anywhere.
Application Load Balancer (ALB): Distributes incoming HTTP traffic across EC2 instances.
Auto Scaling Group (ASG): Automatically adjusts the number of EC2 instances (Amazon Linux 2) based on load.
Launch Template: Defines EC2 instance configuration, including user data to install and configure Apache web server.
CloudWatch Alarms:
Scale up when CPU > 70%
Scale down when CPU < 30%
Outputs: Provides the DNS and URL of the load balancer, VPC ID, and ASG name.

```md
![Architechture Diagram](assets/Diagram.svg)

# How It Works
Networking:
A VPC is created with two public subnets in different Availability Zones.
An Internet Gateway and route table allow internet access.
Security:
Security groups restrict access: ALB allows HTTP from anywhere; EC2 allows HTTP from ALB and SSH from anywhere.
Compute & Scaling:
An Auto Scaling Group manages EC2 instances, using a Launch Template that installs Apache and serves a dynamic HTML page with instance metadata.
The number of instances scales between 1 and 3 based on CPU utilization.
Load Balancing:
The ALB distributes HTTP traffic to healthy EC2 instances.
Monitoring & Automation:
CloudWatch alarms trigger scaling policies to add or remove instances based on CPU usage.
Files
main.tf: Main Terraform configuration (all resources and logic).
terraform.tfvars: Variable values (region, instance type, etc.).
.gitignore: Ensures sensitive and auto-generated files are not committed.
terraform.tfstate & terraform.tfstate.backup: Do NOT commit these! They contain your infrastructure state.
Usage
Prerequisites
Terraform >= 1.0
AWS CLI configured with appropriate credentials.