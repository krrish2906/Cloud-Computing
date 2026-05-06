# Virtual Network Creation and Node Communication using AWS

## Overview

This project demonstrates how to create a custom virtual network in AWS Cloud and establish communication between multiple virtual machines (EC2 instances). Two nodes are deployed inside a custom VPC and files are transferred securely between them using private IP addresses.

The implementation uses:

- AWS VPC
- AWS EC2 Instances
- Ubuntu Server
- Internet Gateway
- Route Tables
- SSH/SCP Communication
- Private IP Networking

---

# Objective

- Create a custom Virtual Private Cloud (VPC)
- Configure subnet and networking components
- Launch multiple EC2 instances inside the VPC
- Enable communication between nodes
- Transfer files securely using private IP addresses
- Demonstrate internal cloud networking

---

# Technologies Used

- AWS EC2
- AWS VPC
- Ubuntu 22.04
- SSH
- SCP
- Linux Networking
- Cloud Computing Services

---

# Cloud Architecture

```text
                    AWS Cloud
-------------------------------------------------

                Custom VPC (10.0.0.0/16)

                        |
                        |
                Public Subnet
                 (10.0.1.0/24)

                /                 \
               /                   \

        EC2 Instance             EC2 Instance
            node1                    node2
       Private IP                Private IP
         10.0.1.x                  10.0.1.x

               <---- File Transfer ---->

-------------------------------------------------
```

---

# Prerequisites

Before starting, ensure you have:

- AWS Account
- EC2 Key Pair (.pem file)
- Internet Connection
- PowerShell / Terminal
- Basic Knowledge of Linux Commands

---

# Step 1: Create Custom VPC

Open AWS Console.

Search:

```text
VPC
```

Open VPC Dashboard.

Click:

```text
Create VPC
```

Choose:

```text
VPC only
```

Configure:

| Field | Value |
|---|---|
| Name tag | my-vpc |
| IPv4 CIDR | 10.0.0.0/16 |

Click:

```text
Create VPC
```

---

# Step 2: Create Subnet

Go to:

```text
Subnets
```

Click:

```text
Create subnet
```

Configure:

| Field | Value |
|---|---|
| VPC ID | my-vpc |
| Subnet name | public-subnet |
| IPv4 CIDR block | 10.0.1.0/24 |

Create subnet.

---

# Step 3: Enable Auto Public IP

Select:

```text
public-subnet
```

Click:

```text
Actions → Edit subnet settings
```

Enable:

```text
Auto-assign public IPv4 address
```

Save changes.

---

# Step 4: Create Internet Gateway

Go to:

```text
Internet Gateways
```

Click:

```text
Create internet gateway
```

Configure:

| Field | Value |
|---|---|
| Name tag | my-igw |

Create gateway.

---

# Step 5: Attach Internet Gateway to VPC

Select:

```text
my-igw
```

Click:

```text
Actions → Attach to VPC
```

Choose:

```text
my-vpc
```

Attach gateway.

---

# Step 6: Create Route Table

Go to:

```text
Route Tables
```

Click:

```text
Create route table
```

Configure:

| Field | Value |
|---|---|
| Name | my-rt |
| VPC | my-vpc |

Create route table.

---

# Step 7: Configure Internet Route

Select:

```text
my-rt
```

Open:

```text
Routes tab
```

Click:

```text
Edit routes
```

Add route:

| Destination | Target |
|---|---|
| 0.0.0.0/0 | Internet Gateway (my-igw) |

Save route.

---

# Step 8: Associate Subnet with Route Table

Inside route table:

Open:

```text
Subnet Associations
```

Click:

```text
Edit subnet associations
```

Select:

```text
public-subnet
```

Save changes.

---

# Step 9: Launch EC2 Instance (node1)

Open AWS EC2 Dashboard.

Click:

```text
Launch Instance
```

Configuration:

| Setting | Value |
|---|---|
| Name | VM-node1 |
| Operating System | Ubuntu 22.04 |
| Instance Type | t2.micro |
| VPC | my-vpc |
| Subnet | public-subnet |

---

# Security Group Configuration

Allow inbound rules:

| Type | Port | Source |
|---|---|---|
| SSH | 22 | Anywhere |
| All Traffic | All | 10.0.0.0/16 |

Launch instance.

---

# Step 10: Launch Second EC2 Instance (node2)

Repeat same steps.

Only change:

| Setting | Value |
|---|---|
| Name | VM-node2 |

Launch instance.

---

# Step 11: Verify Instance Status

Ensure both instances show:

```text
Running
3/3 status checks passed
```

---

# Step 12: Obtain Private IP Addresses

Open both instances and note:

```text
Private IPv4 address
```

Example:

| Instance | Private IP |
|---|---|
| VM-node1 | 10.0.1.25 |
| VM-node2 | 10.0.1.50 |

---

# Step 13: Connect to node1

Using PowerShell:

```bash
ssh -i awskey.pem ubuntu@<NODE1_PUBLIC_IP>
```

Example:

```bash
ssh -i awskey.pem ubuntu@13.xxx.xxx.xxx
```

---

# Step 14: Create File on node1

Inside node1 terminal:

```bash
echo "Hello from node1 to node2" > testfile.txt
```

Verify:

```bash
cat testfile.txt
```

---

# Step 15: Upload PEM Key to node1

From local system:

```bash
scp -i awskey.pem awskey.pem ubuntu@<NODE1_PUBLIC_IP>:/home/ubuntu/
```

---

# Step 16: Give Permission to PEM File

Inside node1:

```bash
chmod 400 awskey.pem
```

---

# Step 17: Transfer File from node1 to node2

Inside node1:

```bash
scp -i awskey.pem testfile.txt ubuntu@<NODE2_PRIVATE_IP>:/home/ubuntu/
```

Example:

```bash
scp -i awskey.pem testfile.txt ubuntu@10.0.1.50:/home/ubuntu/
```

---

# Step 18: Verify File on node2

Connect to node2:

```bash
ssh -i awskey.pem ubuntu@<NODE2_PUBLIC_IP>
```

Check file:

```bash
cat testfile.txt
```

Expected Output:

```text
Hello from node1 to node2
```

---

# Step 19: Reply Back from node2 to node1

Create reply file on node2:

```bash
echo "Reply from node2 to node1" > reply.txt
```

Transfer file:

```bash
scp -i awskey.pem reply.txt ubuntu@<NODE1_PRIVATE_IP>:/home/ubuntu/
```

Verify on node1:

```bash
cat reply.txt
```

Expected Output:

```text
Reply from node2 to node1
```

---

# Useful Commands

| Operation | Command |
|---|---|
| Connect using SSH | `ssh -i awskey.pem ubuntu@PUBLIC_IP` |
| Secure Copy File | `scp -i awskey.pem file ubuntu@IP:/path` |
| View Private IP | EC2 Dashboard |
| Check File Content | `cat filename.txt` |
| Give PEM Permission | `chmod 400 awskey.pem` |

---

# Output

- Custom VPC created successfully
- Subnet and networking configured
- Two EC2 nodes launched
- Internal communication established
- File transferred using private IP
- Bidirectional node communication achieved

---

# Applications

- Distributed Systems
- Internal Cloud Networking
- Secure Node Communication
- Enterprise Infrastructure
- Cloud-Based File Sharing
- Multi-Server Architectures

---

# Advantages

- Secure Private Networking
- Isolated Cloud Infrastructure
- Scalable Architecture
- Fast Internal Communication
- Efficient Resource Management
- Real-world Cloud Networking Experience

---

# Result

Successfully created a custom virtual network in AWS Cloud and established communication between EC2 instances using private IP addresses. Files were transferred securely between nodes inside the VPC.

---

# Conclusion

AWS VPC enables secure and isolated cloud networking environments. By configuring subnets, route tables, internet gateways, and EC2 instances properly, internal node communication can be established efficiently using private networking.

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology