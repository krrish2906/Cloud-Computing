# Employee Management Lightning Application using Salesforce

## Overview

This project demonstrates the development of an **Employee Management Lightning Application** using Salesforce Lightning Platform.

The application manages employee records using Salesforce Custom Objects, Validation Rules, Custom Tabs, and Lightning App Builder.

The system supports:

- Employee record creation
- Employee record updates
- Input validation
- Unique employee ID enforcement
- Lightning application navigation
- Browser-based Salesforce implementation

This implementation is completed entirely using Salesforce browser UI without Apex, LWC coding, or external development tools.

---

# Objective

Develop an Employee Management Lightning Application that:

- Stores employee details
- Validates employee input according to assignment constraints
- Allows creation and updating of employee records
- Uses Salesforce Lightning interface for employee management

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Salesforce | Cloud CRM Platform |
| Custom Objects | Employee Data Storage |
| Validation Rules | Input Validation |
| Lightning App Builder | Application UI |
| Custom Tabs | Navigation |
| Salesforce Browser UI | Development Environment |

---

# System Architecture

```text
            Employee Management Lightning App
                        |
                        |
                Employee Records Tab
                        |
                        |
                Employee_Record__c
                        |
                        |
                Validation Rules
```

---

# Features

- Employee Record Management
- Create Employee Records
- Update Employee Records
- Validation Rule Enforcement
- Unique Employee ID Constraint
- Lightning App Navigation
- Browser-Based Implementation

---

# Prerequisites

Before starting, ensure you have:

- Salesforce Developer Account
- Internet Connection
- Salesforce Setup Access
- System Administrator Permissions

---

# Implementation Steps

| Step | Description |
|---|---|
| Step 1 | Create Salesforce Developer Account |
| Step 2 | Create Employee Custom Object |
| Step 3 | Create Employee Fields |
| Step 4 | Create Validation Rules |
| Step 5 | Create Custom Tab |
| Step 6 | Create Lightning Application |
| Step 7 | Test Application |

---

# Step 1: Create Salesforce Developer Account

Open:

https://developer.salesforce.com/signup

Create a free Salesforce Developer Edition account.

Login after verification.

---

# Step 2: Create Employee Custom Object

Go to:

```text
Setup → Object Manager
```

Click:

```text
Create → Custom Object
```

Configure:

| Property | Value |
|---|---|
| Label | Employee Record |
| Plural Label | Employee Records |
| Object Name | Employee_Record |

Click:

```text
Save
```

Salesforce creates:

```text
Employee_Record__c
```

---

# Step 3: Create Employee Fields

Go to:

```text
Setup → Object Manager → Employee Record → Fields & Relationships
```

Create the following fields:

| Field Label | Data Type | API Name | Configuration |
|---|---|---|---|
| Employee Name | Text | Employee_Name__c | Length = 100 |
| Employee ID | Number | Employee_ID__c | Length = 10, Decimal = 0, UNIQUE |
| Salary | Number | Salary__c | Length = 10, Decimal = 0 |
| Email | Email | Email__c | Standard Email Validation |
| Department | Picklist | Department__c | IT, HR, Finance, Marketing, Sales, Operations, Engineering, Support |
| Joining Date | Date | Joining_Date__c | Standard Date Field |

---

# Step 4: Create Validation Rules

Go to:

```text
Setup → Object Manager → Employee Record → Validation Rules
```

Create the following rules:

| Rule Name | Formula | Error Message |
|---|---|---|
| Validate_Employee_Name | `LEN(Employee_Name__c) < 3` | Employee name must contain at least 3 characters |
| Validate_Employee_ID | `Employee_ID__c <= 0` | Employee ID must be greater than 0 |
| Validate_Salary | `OR(Salary__c <= 10000, Salary__c >= 500000)` | Salary must be greater than 10,000 and less than 500,000 |
| Validate_Department | `ISBLANK(TEXT(Department__c))` | Department must be selected |
| Validate_Joining_Date | `Joining_Date__c > TODAY()` | Joining date cannot be a future date |

Notes:

- Employee ID uniqueness is enforced through field configuration.
- Email format validation is automatically handled by Salesforce Email field type.

---

# Step 5: Create Custom Tab

Go to:

```text
Setup → Tabs
```

Under:

```text
Custom Object Tabs
```

Click:

```text
New
```

Configure:

| Property | Value |
|---|---|
| Object | Employee Record |
| Tab Style | Any Preferred Icon |

Click:

```text
Next → Next → Save
```

This creates:

```text
Employee Records Tab
```

---

# Step 6: Create Lightning Application

Go to:

```text
Setup → App Manager
```

Click:

```text
New Lightning App
```

Configure:

| Property | Value |
|---|---|
| App Name | Employee Management |
| Description | Employee Management Lightning Application |

Click:

```text
Next
```

---

## Branding

Choose any preferred theme/logo.

Click:

```text
Next
```

---

## Utility Items

Skip utility items.

Click:

```text
Next
```

---

## Navigation Items

Add:

```text
Employee Records
```

Move to selected list.

Click:

```text
Next
```

---

## User Profiles

Select:

```text
System Administrator
```

Click:

```text
Save & Finish
```

---

# Step 7: Test Application

Open:

```text
App Launcher
```

(top-left 9 dots)

Search:

```text
Employee Management
```

Open the application.

You should see:

```text
Employee Records
```

tab.

---

# Test Cases

## Valid Record Test

Enter:

| Field | Example Value |
|---|---|
| Employee Name | Krish Bansal |
| Employee ID | 101 |
| Salary | 50000 |
| Email | krish@gmail.com |
| Department | IT |
| Joining Date | Any Past Date |

Expected Result:

```text
Record saved successfully
```

---

## Validation Tests

| Test Case | Input | Expected Result |
|---|---|---|
| Invalid Employee Name | AB | Employee name must contain at least 3 characters |
| Invalid Employee ID | 0 | Employee ID must be greater than 0 |
| Invalid Salary | 9000 | Salary must be greater than 10,000 and less than 500,000 |
| Blank Department | No selection | Department must be selected |
| Future Joining Date | Future date | Joining date cannot be a future date |
| Duplicate Employee ID | Existing ID | Salesforce Unique Constraint Error |
| Invalid Email | abc.com | Salesforce Email Format Error |

---

# Output

- Employee custom object created
- Employee fields configured
- Validation rules implemented
- Employee tab created
- Lightning application created
- Employee management module functional
- Browser-based Salesforce implementation completed

---

# Applications

- HR Management Systems
- Employee Database Management
- Corporate CRM Systems
- Staff Record Management
- Enterprise Employee Administration

---

# Advantages

- Browser-Based Development
- No External Tools Required
- Native Salesforce Lightning UI
- Strong Validation Enforcement
- Centralized Employee Record Management
- Secure Cloud Storage
- Scalable Architecture

---

# Result

Successfully developed an **Employee Management Lightning Application** in Salesforce using Custom Objects, Validation Rules, Custom Tabs, and Lightning App Builder for employee record management.

---

# Conclusion

Salesforce Lightning Platform enables rapid enterprise application development without extensive coding. Using browser-based configuration tools, a fully functional Employee Management Application can be developed efficiently with robust validation and intuitive navigation.

---

# Viva Questions

| Question | Answer |
|---|---|
| What is Salesforce Lightning? | Modern Salesforce UI framework |
| What is a Custom Object? | User-defined Salesforce database object |
| What is a Validation Rule? | Rule used to enforce data correctness |
| What is Lightning App Builder? | Tool used to create Salesforce applications |
| Why is Employee ID marked Unique? | To prevent duplicate employee records |
| Why use Picklist for Department? | To restrict user input to predefined options |

---

# Project Components

| Component | Purpose |
|---|---|
| Employee_Record__c | Employee data storage |
| Validation Rules | Input validation |
| Custom Tab | Navigation |
| Lightning App | Main application UI |

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology