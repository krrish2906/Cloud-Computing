# Console Based Email Notification System using Salesforce Apex

## Overview

This project demonstrates the development of a Console Based Email Notification System using Salesforce Apex programming language.

The application sends email notifications to a specified email address using Salesforce built-in Messaging services. The system supports sending emails with or without attachments through Apex methods executed from the Execute Anonymous Window in Salesforce Developer Console.

The implementation uses:

- Salesforce Platform
- Apex Programming Language
- Salesforce Messaging Services
- Execute Anonymous Window

---

# Objective

- Develop an Apex program to send email notifications
- Define recipient email address
- Define email subject
- Define email body
- Send emails using Salesforce Messaging class
- Implement optional attachment support
- Execute the program using console-based Apex execution

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Salesforce | Cloud CRM Platform |
| Apex | Backend Programming |
| Messaging.SingleEmailMessage | Email Service |
| Execute Anonymous | Console-Based Execution |
| EmailFileAttachment | Attachment Support |

---

# System Architecture

```text
        Execute Anonymous Window
                  |
                  |
          Apex Email Class
      (EmailNotificationService)
                  |
                  |
      Salesforce Messaging Service
                  |
                  |
           Recipient Email
```

---

# Features

- Send Email Notification
- Define Recipient Address
- Define Email Subject
- Define Email Message Body
- Send Email with Attachment
- Console-Based Execution
- Salesforce Email Service Integration

---

# Prerequisites

Before starting, ensure you have:

- Salesforce Developer Account
- Internet Connection
- Apex Access
- Valid Email Address

---

# Implementation Steps

| Step | Description |
|---|---|
| Step 1 | Create Salesforce Developer Account |
| Step 2 | Open Salesforce Developer Console |
| Step 3 | Create Apex Email Service Class |
| Step 4 | Implement Email Sending Logic |
| Step 5 | Execute Apex Program |
| Step 6 | Verify Email Delivery |
| Step 7 | Implement Attachment Support (Optional) |

---

# Step 1: Create Salesforce Developer Account

Open:

https://developer.salesforce.com/signup

Create a free Salesforce Developer Edition account.

Login after verification.

---

# Step 2: Open Salesforce Developer Console

After login:

1. Click the gear icon
2. Select:

```text
Developer Console
```

---

# Step 3: Create Apex Email Service Class

Go to:

```text
File → New → Apex Class
```

Class Name:

```text
EmailNotificationService
```

Paste the code from:

```text
EmailNotificationService.cls
```

Save the Apex class.

---

# Step 4: Implement Email Sending Logic

The Apex class implements:

| Method | Purpose |
|---|---|
| sendEmail() | Send email without attachment |
| sendEmailWithAttachment() | Send email with attachment |

The implementation uses:

```text
Messaging.SingleEmailMessage
```

to create and send email notifications.

---

# Step 5: Execute Apex Program

Open:

```text
Debug → Open Execute Anonymous Window
```

Shortcut:

```text
Ctrl + E
```

---

# Send Email Without Attachment

Paste the execution code:

```text
EmailNotificationService.sendEmail(
    'your_email@gmail.com',
    'Salesforce Apex Email Notification',
    'Hello! This email was sent using Salesforce Apex.'
);
```

Execute the code.

Expected Output:

```text
Email Sent Successfully
```

---

# Step 6: Verify Email Delivery

Check:
- Inbox
- Spam Folder

Expected Email:

| Property | Value |
|---|---|
| Subject | Salesforce Apex Email Notification |
| Body | Hello! This email was sent using Salesforce Apex. |

---

# Step 7: Send Email With Attachment (Optional)

The application also supports sending attachments using:

```text
Messaging.EmailFileAttachment
```

Paste the execution code:

```text
EmailNotificationService.sendEmailWithAttachment(
    'your_email@gmail.com',
    'Salesforce Email With Attachment',
    'Hello! Please find the attachment below.'
);
```

Execute the code.

Expected Output:

```text
Email With Attachment Sent Successfully
```

---

# Verify Attachment

Check email inbox.

The received email should contain:

```text
sample.txt
```

attachment.

---

# Apex Components Used

| Component | Purpose |
|---|---|
| Apex Class | Email service logic |
| Messaging.SingleEmailMessage | Email object |
| Messaging.sendEmail() | Send email |
| EmailFileAttachment | Attachment handling |
| Execute Anonymous | Console execution |

---

# Output

- Apex email service class created
- Email notifications sent successfully
- Email subject and body configured
- Attachment support implemented
- Console-based execution completed
- Salesforce Messaging integration achieved

---

# Applications

- Notification Systems
- Automated Email Services
- CRM Alert Systems
- Banking Notifications
- Enterprise Communication Systems
- Customer Notification Systems

---

# Advantages

- Cloud-Based Email Service
- Automated Notification System
- Secure Email Delivery
- Attachment Support
- Easy Integration with Salesforce
- Console-Based Execution

---

# Result

Successfully developed a Console Based Email Notification System using Salesforce Apex with support for sending emails with and without attachments.

---

# Conclusion

Salesforce Apex provides powerful built-in messaging services for implementing automated email systems. Using Apex classes and Salesforce Messaging APIs, email notifications can be sent efficiently with customizable subject, body, and attachment support.

---

# Viva Questions

| Question | Answer |
|---|---|
| What is Apex? | Salesforce backend programming language |
| What is Messaging.SingleEmailMessage? | Salesforce email object |
| What is sendEmail()? | Method used to send email notifications |
| What is EmailFileAttachment? | Class used to attach files in email |
| What is Execute Anonymous? | Temporary Apex execution window |

---

# Project Files

| File Name | Purpose |
|---|---|
| EmailNotificationService.cls | Apex email service class |
| SendEmail.apex | Email execution logic |
| SendEmailWithAttachment.apex | Attachment email execution logic |

---

# Expected Console Output

## Without Attachment

```text
Email Sent Successfully
```

---

## With Attachment

```text
Email With Attachment Sent Successfully
```

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology