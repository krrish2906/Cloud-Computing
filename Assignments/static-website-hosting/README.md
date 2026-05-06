# Static Website Deployment on Cloud VM

## Overview
This project demonstrates how to design and deploy a static website on a cloud virtual machine (VM)/instance. The server and networking settings are configured so that the website is publicly accessible and can be updated remotely.

The deployment uses:
- Ubuntu Cloud VM
- Apache Web Server
- HTML/CSS Static Website
- SSH/SCP for Remote Management

---

# Objective

- Launch a cloud virtual machine
- Configure firewall and networking settings
- Install and configure Apache Web Server
- Deploy a static website
- Make the website publicly accessible
- Update the website remotely using SSH/SCP

---

# Technologies Used

- HTML5
- CSS3
- Ubuntu Server
- Apache HTTP Server
- SSH
- SCP
- Cloud Computing Services

---

# Cloud Architecture

```text
User Browser
      |
      | HTTP Request
      v
Public IP Address
      |
      v
Cloud VM Instance
      |
      v
Apache Web Server
      |
      v
Static Website Files
```

---

# Prerequisites

Before starting, ensure you have:

- Cloud Platform Account (AWS/GCP/Azure)
- SSH Key Pair
- Internet Connection
- Terminal or PuTTY
- Basic HTML Website Files

---

# Step 1: Launch Cloud VM Instance

## Example AWS EC2 Configuration

| Setting | Value |
|---|---|
| Instance Name | StaticWebsiteServer |
| Operating System | Ubuntu 22.04 |
| Instance Type | t2.micro |
| Storage | 8 GB |

## Required Open Ports

| Port | Protocol | Purpose |
|---|---|---|
| 22 | TCP | SSH Access |
| 80 | TCP | HTTP Access |

---

# Step 2: Connect to the Instance

```bash
ssh -i mykey.pem ubuntu@<PUBLIC_IP>
```

Example:

```bash
ssh -i awskey.pem ubuntu@13.233.xxx.xxx
```

---

# Step 3: Update System Packages

```bash
sudo apt update
sudo apt upgrade -y
```

---

# Step 4: Install Apache Web Server

Install Apache:

```bash
sudo apt install apache2 -y
```

Start Apache:

```bash
sudo systemctl start apache2
```

Enable Apache on Boot:

```bash
sudo systemctl enable apache2
```

Check Apache Status:

```bash
sudo systemctl status apache2
```

---

# Step 5: Deploy Static Website

Move to the web root directory:

```bash
cd /var/www/html
```

Remove the default Apache page:

```bash
sudo rm index.html
```

Create a new HTML file:

```bash
sudo nano index.html
```

Paste the following code:

```html
<!DOCTYPE html>
<html>
<head>
    <title>Cloud Website</title>
    <style>
        body{
            font-family: Arial;
            text-align:center;
            margin-top:100px;
            background:#f2f2f2;
        }

        h1{
            color:#0077cc;
        }
    </style>
</head>
<body>

    <h1>Static Website Hosted on Cloud VM</h1>
    <p>Website deployed successfully using Apache Server.</p>

</body>
</html>
```

Save and exit.

---

# Step 6: Configure Networking

Ensure the instance security group/firewall allows:

- SSH Traffic (Port 22)
- HTTP Traffic (Port 80)

## AWS Security Group Example

| Type | Protocol | Port Range | Source |
|---|---|---|---|
| SSH | TCP | 22 | 0.0.0.0/0 |
| HTTP | TCP | 80 | 0.0.0.0/0 |

---

# Step 7: Access Website

Open the browser and enter:

```text
http://<PUBLIC_IP>
```

Example:

```text
http://13.233.xxx.xxx
```

The deployed website will appear.

---

# Remote Website Update

Upload updated files remotely using SCP:

```bash
scp -i awskey.pem index.html ubuntu@<PUBLIC_IP>:/tmp/
```

Move uploaded file:

```bash
sudo mv /tmp/index.html /var/www/html/
```

Restart Apache:

```bash
sudo systemctl restart apache2
```

---

# Useful Commands

| Operation | Command |
|---|---|
| Update Packages | `sudo apt update` |
| Install Apache | `sudo apt install apache2 -y` |
| Start Apache | `sudo systemctl start apache2` |
| Restart Apache | `sudo systemctl restart apache2` |
| Enable Apache | `sudo systemctl enable apache2` |
| Check Apache Status | `sudo systemctl status apache2` |

---

# Output

- Cloud VM launched successfully
- Apache Web Server configured
- Static website deployed
- Website publicly accessible
- Remote updates performed successfully

---

# Applications

- Portfolio Websites
- Landing Pages
- Documentation Hosting
- College Mini Projects
- Business Information Websites

---

# Advantages

- Low Cost Hosting
- Easy Deployment
- Fast Loading Speed
- Simple Maintenance
- High Availability

---

# Result

Successfully designed and deployed a static website on a cloud virtual machine with proper server and networking configuration. The website is publicly accessible and can be updated remotely.

---

# Conclusion

Deploying a static website on a cloud VM provides a scalable and efficient hosting solution. By properly configuring the web server and security settings, the website becomes accessible globally while still allowing secure remote management.

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology