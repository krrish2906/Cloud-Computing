# Email Notification System using Salesforce Apex and Visualforce

## Overview

This project demonstrates the development of an Email Notification System using Salesforce Apex programming language and Visualforce pages.

The application allows users to send email notifications to a specified email address using Salesforce built-in Messaging services. The system supports:

- Sending emails with or without attachments
- Validating recipient email address
- Displaying success and error messages
- Frontend interaction using Visualforce UI

The implementation uses:

- Salesforce Platform
- Apex Programming Language
- Visualforce Pages
- Salesforce Messaging Services

---

# Objective

- Develop an Apex program to send email notifications
- Create a frontend using Visualforce
- Validate email addresses before sending
- Display appropriate error messages for invalid email IDs
- Support optional file attachments
- Use Salesforce Messaging class for email delivery

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Salesforce | Cloud CRM Platform |
| Apex | Backend Programming |
| Visualforce | Frontend UI |
| Messaging.SingleEmailMessage | Email Service |
| EmailFileAttachment | Attachment Handling |
| ApexPages.Message | UI Messages |

---

# System Architecture

```text
            Visualforce Page
                    |
                    |
             Apex Controller
             (EmailController)
                    |
                    |
      Salesforce Messaging Service
                    |
                    |
             Recipient Email
```

---

# Features

- Send Email Notifications
- Frontend User Interface
- Email Validation
- Success/Error Messages
- Optional Attachment Support
- Salesforce Messaging Integration

---

# Prerequisites

Before starting, ensure you have:

- Salesforce Developer Account
- Internet Connection
- Apex Access
- Visualforce Access
- Valid Email Address

---

# Implementation Steps

| Step | Description |
|---|---|
| Step 1 | Create Salesforce Developer Account |
| Step 2 | Open Salesforce Setup |
| Step 3 | Create Apex Controller |
| Step 4 | Create Visualforce Page |
| Step 5 | Implement Email Validation |
| Step 6 | Implement Attachment Support |
| Step 7 | Run and Test the Application |

---

# Step 1: Create Salesforce Developer Account

Open:

https://developer.salesforce.com/signup

Create a free Salesforce Developer Edition account.

Login after verification.

---

# Step 2: Open Salesforce Setup

After login:

1. Click the gear icon
2. Select:

```text
Setup
```

---

# Step 3: Create Apex Controller

Go to:

```text
Setup → Apex Classes
```

Click:

```text
New
```

Class Name:

```text
EmailController
```

Paste the code from:

```text
EmailController.cls
```

Save the Apex class.

---

# Step 4: Create Visualforce Page

Go to:

```text
Setup → Visualforce Pages
```

Click:

```text
New
```

Page Name:

```text
EmailNotificationPage
```

Paste the code from:

```text
EmailNotificationPage.page
```

Save the Visualforce page.

---

# Step 5: Implement Email Validation

The application validates the email address using:

```text
Pattern.matches()
```

If the email format is invalid, the application displays:

```text
Invalid Email Address
```

using:

```text
ApexPages.Message
```

---

# Step 6: Implement Attachment Support

The application supports optional attachments using:

```text
Messaging.EmailFileAttachment
```

If the checkbox is selected:
- A sample text file is attached
- Email is sent with attachment

Otherwise:
- Email is sent normally without attachment

---

# Step 7: Run and Test the Application

Open the following URL:

```text
/apex/EmailNotificationPage
```

OR

```text
https://<your-org-domain>.salesforce.com/apex/EmailNotificationPage
```

---

# Test Valid Email

Enter:

| Field | Example |
|---|---|
| Recipient Email | your_email@gmail.com |
| Subject | Salesforce Test |
| Message Body | Hello from Salesforce Apex |

Choose:
- With Attachment
OR
- Without Attachment

Click:

```text
Send Email
```

Expected Output:

```text
Email Sent Successfully
```

---

# Test Invalid Email

Enter invalid email:

```text
invalid-email
```

Click:

```text
Send Email
```

Expected Output:

```text
Invalid Email Address
```

---

# Verify Attachment

If attachment option is enabled:

You should receive:

```text
sample.txt
```

attachment in email inbox.

---

# Apex Components Used

| Component | Purpose |
|---|---|
| Apex Controller | Backend email logic |
| Visualforce Page | Frontend UI |
| Messaging.SingleEmailMessage | Email object |
| Messaging.sendEmail() | Send email |
| EmailFileAttachment | Attachment support |
| Pattern.matches() | Email validation |
| ApexPages.Message | Display UI messages |

---

# Output

- Apex controller created successfully
- Visualforce frontend implemented
- Email validation completed
- Email notifications sent successfully
- Invalid email handling implemented
- Attachment support implemented
- Salesforce Messaging integration achieved

---

# Applications

- CRM Notification Systems
- Enterprise Email Automation
- Customer Notification Systems
- Banking Alerts
- Academic Notification Systems
- Automated Communication Systems

---

# Advantages

- Cloud-Based Email Service
- Frontend User Interaction
- Secure Email Delivery
- Attachment Support
- Real-Time Validation
- Easy Salesforce Integration

---

# Result

Successfully developed an Email Notification System using Salesforce Apex and Visualforce with support for email validation, success/error handling, and optional attachments.

---

# Conclusion

Salesforce Apex provides powerful built-in messaging services for implementing automated email systems. Using Apex controllers and Visualforce pages, dynamic frontend-based email notification applications can be developed efficiently with validation and attachment support.

---

# Viva Questions

| Question | Answer |
|---|---|
| What is Apex? | Salesforce backend programming language |
| What is Visualforce? | Salesforce frontend UI framework |
| What is Messaging.SingleEmailMessage? | Salesforce email object |
| What is sendEmail()? | Method used to send email notifications |
| What is Pattern.matches()? | Method used for email validation |
| What is EmailFileAttachment? | Class used to attach files in email |

---

# Project Files

| File Name | Purpose |
|---|---|
| EmailController.cls | Apex controller for email logic |
| EmailNotificationPage.page | Visualforce frontend page |

---

# Expected Outputs

## Valid Email

```text
Email Sent Successfully
```

---

## Invalid Email

```text
Invalid Email Address
```

---

## Email With Attachment

```text
Attachment: sample.txt
```

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology