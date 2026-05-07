# Product Inventory Management System using Salesforce Apex and Visualforce

## Overview

This project demonstrates the development of a Product Inventory Management System using Salesforce Apex programming language and Visualforce pages.

The application manages product inventory records stored in a custom Salesforce object. Users can add, view, and delete product records through a Visualforce user interface.

The implementation uses:

- Salesforce Platform
- Apex Programming Language
- Visualforce Pages
- Custom Objects
- SOQL Queries

---

# Objective

- Create a custom object for product inventory records
- Store product information in Salesforce
- Develop backend logic using Apex
- Create a Visualforce page for UI
- Perform insert, display, and delete operations

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Salesforce | Cloud CRM Platform |
| Apex | Backend Programming |
| Visualforce | Frontend UI |
| SOQL | Database Query Language |
| Custom Objects | Data Storage |

---

# System Architecture

```text
                Visualforce Page
                        |
                        |
                Apex Controller
                        |
                        |
                Custom Object
            Product_Inventory__c
```

---

# Features

- Add Product Records
- Display Product Records
- Delete Product Records
- Dynamic Data Rendering
- Salesforce Database Integration

---

# Product Fields

| Field Name | Data Type |
|---|---|
| Product Name | Text |
| Serial No | Text |
| Manufacture Date | Date |
| Expiry Date | Date |

---

# Prerequisites

Before starting, ensure you have:

- Salesforce Developer Account
- Internet Connection
- Basic Knowledge of Salesforce
- Apex and Visualforce Access

---

# Implementation Steps

| Step | Description |
|---|---|
| Step 1 | Create Salesforce Developer Account |
| Step 2 | Open Salesforce Setup |
| Step 3 | Create Custom Object (`Product_Inventory__c`) |
| Step 4 | Create Custom Fields (`Serial No`, `Manufacture Date`, `Expiry Date`) |
| Step 5 | Create Apex Controller (`ProductInventoryController.cls`) |
| Step 6 | Create Visualforce Page (`ProductInventoryManagement.page`) |
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

# Step 3: Create Custom Object

Search:

```text
Object Manager
```

Open Object Manager.

Click:

```text
Create → Custom Object
```

Configure:

| Field | Value |
|---|---|
| Label | Product Inventory |
| Plural Label | Product Inventories |
| Object Name | Product_Inventory |

Click:

```text
Save
```

Salesforce automatically creates:

```text
Product_Inventory__c
```

---

# Step 4: Create Custom Fields

Inside Product Inventory Object:

Open:

```text
Fields & Relationships
```

Create the following fields:

| Field Label | Field Type | API Name |
|---|---|---|
| Serial No | Text | Serial_No__c |
| Manufacture Date | Date | Manufacture_Date__c |
| Expiry Date | Date | Expiry_Date__c |

Save all fields after creation.

---

# Step 5: Create the Apex Controller

Go to:

```text
Setup → Apex Classes
```

Click:

```text
New
```

Paste the code from:

```text
ProductInventoryController.cls
```

Save the Apex class.

---

# Step 6: Create the Visualforce Page

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
ProductInventoryManagement
```

Paste the code from:

```text
ProductInventoryManagement.page
```

Save the Visualforce page.

---

# Step 7: Run the Application


1. Go to:

```text
Setup → Visualforce Pages
```

2. Open:

```text
ProductInventoryManagement
```

3. Click:

```text
Preview
```

---

# How to Use

1. Fill in the product details.
2. Click:

```text
Save Product
```

3. The product record will be stored in Salesforce database.
4. Existing products will appear automatically in the table below.
5. Click:

```text
Delete
```

to remove records.

---

# Functionalities Demonstrated

| Functionality | Description |
|---|---|
| Add Product | Insert new product records |
| View Products | Display all inventory records |
| Delete Product | Remove records from database |
| Dynamic UI | Real-time Visualforce rendering |
| Database Integration | Salesforce object connectivity |

---

# Apex Components Used

| Component | Purpose |
|---|---|
| Apex Controller | Backend business logic |
| SOQL Query | Fetch records |
| DML Operations | Insert/Delete records |
| Visualforce Page | Frontend UI |

---

# Output

- Custom Product Inventory Object created
- Product fields configured
- Apex controller implemented
- Visualforce page created
- Product records inserted successfully
- Dynamic record display achieved
- Delete functionality implemented

---

# Applications

- Inventory Management Systems
- Warehouse Management
- Product Tracking Systems
- Manufacturing Systems
- Retail Product Management
- Enterprise Inventory Solutions

---

# Advantages

- Cloud-Based Inventory Management
- Centralized Product Database
- Easy Record Maintenance
- Dynamic UI Rendering
- Secure Data Handling
- Salesforce Integration

---

# Result

Successfully developed a Product Inventory Management System using Salesforce Apex and Visualforce with complete product record management functionality.

---

# Conclusion

Salesforce provides a powerful cloud platform for rapidly developing enterprise applications. Using Apex and Visualforce, dynamic inventory management applications can be developed efficiently with integrated backend and frontend capabilities.

---

# Viva Questions

| Question | Answer |
|---|---|
| What is Apex? | Salesforce backend programming language |
| What is Visualforce? | Salesforce UI framework |
| What is SOQL? | Salesforce query language |
| What is a Custom Object? | User-defined Salesforce database object |
| Why use Visualforce? | To create dynamic custom UI pages |

---

# Project Files

| File Name | Purpose |
|---|---|
| ProductInventoryController.cls | Apex backend controller |
| ProductInventoryManagement.page | Visualforce frontend page |

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology