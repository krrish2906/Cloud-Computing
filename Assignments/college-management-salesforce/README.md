# College Management Lightning Application using Salesforce

## Overview

This project demonstrates the development of a **College Management Lightning Application** using Salesforce Lightning Platform.

The application manages **student and faculty records** using Salesforce Custom Objects, Validation Rules, Custom Tabs, and Lightning App Builder.

The system supports:

- Student record management
- Faculty record management
- Data validation enforcement
- Lightning application navigation
- Browser-based Salesforce implementation

This implementation is completed entirely using Salesforce browser UI without Apex or external development tools.

---

# Objective

Develop a College Management Lightning Application that:

- Manages student records
- Manages faculty records
- Validates data according to assignment constraints
- Allows creation and updating of records
- Uses Salesforce Lightning platform for frontend application development

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Salesforce | Cloud CRM Platform |
| Custom Objects | Data Storage |
| Validation Rules | Input Validation |
| Lightning App Builder | Application UI |
| Custom Tabs | Navigation |
| Salesforce Browser UI | Development Environment |

---

# System Architecture

```text
                College Management Lightning App
                             |
         -------------------------------------------------
         |                                               |
         |                                               |
   College Student Module                        College Faculty Module
         |                                               |
         |                                               |
   College_Student__c Object                     College_Faculty__c Object
         |                                               |
         |                                               |
   Validation Rules                              Validation Rules
```

---

# Features

- Student Record Management
- Faculty Record Management
- Create New Records
- Edit Existing Records
- Data Validation
- Unique Faculty ID Enforcement
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
| Step 2 | Create College Student Custom Object |
| Step 3 | Create College Student Fields |
| Step 4 | Create Student Validation Rules |
| Step 5 | Create College Faculty Custom Object |
| Step 6 | Create College Faculty Fields |
| Step 7 | Create Faculty Validation Rules |
| Step 8 | Create Custom Tabs |
| Step 9 | Create Lightning Application |
| Step 10 | Test Application |

---

# Step 1: Create Salesforce Developer Account

Open:

https://developer.salesforce.com/signup

Create a free Salesforce Developer Edition account.

Login after verification.

---

# Step 2: Create College Student Custom Object

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
| Label | College Student |
| Plural Label | College Students |
| Object Name | College_Student |

Click:

```text
Save
```

Salesforce creates:

```text
College_Student__c
```

---

# Step 3: Create College Student Fields

Go to:

```text
Setup → Object Manager → College Student → Fields & Relationships
```

Create the following fields:

| Field Label | Data Type | API Name | Configuration |
|---|---|---|---|
| Student Name | Text | Student_Name__c | Length = 100 |
| Roll Number | Number | Roll_Number__c | Length = 10, Decimal = 0 |
| Marks | Number | Marks__c | Length = 5, Decimal = 0 |
| Email | Email | Email__c | Default Email Validation |

---

# Step 4: Create Student Validation Rules

Go to:

```text
Setup → Object Manager → College Student → Validation Rules
```

Create the following rules:

| Rule Name | Formula | Error Message |
|---|---|---|
| Validate_Marks | `OR(Marks__c < 0, Marks__c > 100)` | Marks should be between 0 and 100 |
| Validate_Roll_Number | `Roll_Number__c <= 0` | Roll number must be greater than 0 |
| Validate_Email | `NOT(CONTAINS(Email__c, "@"))` | Email must contain @ symbol |
| Validate_Student_Name | `ISBLANK(Student_Name__c)` | Student name cannot be blank |

---

# Step 5: Create College Faculty Custom Object

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
| Label | College Faculty |
| Plural Label | College Faculties |
| Object Name | College_Faculty |

Click:

```text
Save
```

Salesforce creates:

```text
College_Faculty__c
```

---

# Step 6: Create College Faculty Fields

Go to:

```text
Setup → Object Manager → College Faculty → Fields & Relationships
```

Create the following fields:

| Field Label | Data Type | API Name | Configuration |
|---|---|---|---|
| Faculty Name | Text | Faculty_Name__c | Length = 100 |
| Faculty ID | Number | Faculty_ID__c | Length = 10, Decimal = 0, UNIQUE |
| Salary | Number | Salary__c | Length = 10, Decimal = 0 |
| Department | Picklist | Department__c | IT, HR, Finance, Marketing, Computer Science, Mechanical, Civil, Electronics |
| Joining Date | Date | Joining_Date__c | Standard Date Field |

---

# Step 7: Create Faculty Validation Rules

Go to:

```text
Setup → Object Manager → College Faculty → Validation Rules
```

Create the following rules:

| Rule Name | Formula | Error Message |
|---|---|---|
| Validate_Faculty_Name | `LEN(Faculty_Name__c) < 3` | Faculty name must contain at least 3 characters |
| Validate_Salary | `OR(Salary__c <= 10000, Salary__c >= 500000)` | Salary must be greater than 10,000 and less than 500,000 |
| Validate_Department | `ISBLANK(TEXT(Department__c))` | Department must be selected |
| Validate_Joining_Date | `Joining_Date__c > TODAY()` | Joining date cannot be a future date |
| Validate_Faculty_ID | `Faculty_ID__c <= 0` | Faculty ID must be greater than 0 |

Faculty ID uniqueness is enforced through field configuration.

---

# Step 8: Create Custom Tabs

Go to:

```text
Setup → Tabs
```

Under:

```text
Custom Object Tabs
```

Create the following tabs:

| Tab Name | Object |
|---|---|
| College Students | College Student |
| College Faculties | College Faculty |

Choose any tab style/icon.

Save the tabs.

---

# Step 9: Create Lightning Application

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
| App Name | College Management |
| Description | College Student and Faculty Management System |

Click:

```text
Next
```

Skip branding customization if not required.
Skip utility items.

Under Navigation Items, add:

| Navigation Items |
|---|
| College Students |
| College Faculties |

Assign:

```text
System Administrator
```

profile.

Click:

```text
Save & Finish
```

---

# Step 10: Test the Application

Open:

```text
App Launcher → College Management
```

---

# Student Validation Testing

| Test Input | Expected Result |
|---|---|
| Marks = 150 | Error: Marks should be between 0 and 100 |
| Roll Number = 0 | Error: Roll number must be greater than 0 |
| Email = abc.com | Error: Email must contain @ |
| Blank Student Name | Error: Student name cannot be blank |

---

# Faculty Validation Testing

| Test Input | Expected Result |
|---|---|
| Faculty Name = AB | Error: Faculty name must contain at least 3 characters |
| Salary = 9000 | Error: Salary must be greater than 10,000 and less than 500,000 |
| Department blank | Error: Department must be selected |
| Future Joining Date | Error: Joining date cannot be a future date |
| Duplicate Faculty ID | Salesforce Unique Constraint Error |
| Faculty ID = 0 | Error: Faculty ID must be greater than 0 |

---

# Output

- College Student object created
- College Faculty object created
- Student validation rules implemented
- Faculty validation rules implemented
- Custom tabs created
- Lightning application created
- Student management module functional
- Faculty management module functional

---

# Applications

- College ERP Systems
- Academic Record Management
- Faculty Administration Systems
- Student Information Systems
- Educational CRM Platforms

---

# Advantages

- Browser-Based Development
- No External Coding Tools Required
- Native Salesforce Lightning UI
- Strong Validation Enforcement
- Centralized Record Management
- Secure Cloud Storage
- Scalable Architecture

---

# Result

Successfully developed a **College Management Lightning Application** in Salesforce using Custom Objects, Validation Rules, Tabs, and Lightning App Builder for managing student and faculty records.

---

# Conclusion

Salesforce Lightning Platform enables rapid enterprise application development without extensive coding. Using browser-based configuration tools, a fully functional College Management Application can be developed efficiently with robust validation and intuitive navigation.

---

# Viva Questions

| Question | Answer |
|---|---|
| What is Salesforce Lightning? | Modern Salesforce UI framework |
| What is a Custom Object? | User-defined Salesforce database object |
| What is a Validation Rule? | Rule to enforce data correctness |
| What is Lightning App Builder? | Tool to create Salesforce applications |
| Why use Picklist? | To restrict user input to predefined values |
| Why set Faculty ID as Unique? | To prevent duplicate records |

---

# Project Components

| Component | Purpose |
|---|---|
| College_Student__c | Student data storage |
| College_Faculty__c | Faculty data storage |
| Validation Rules | Input constraints |
| Custom Tabs | Navigation |
| Lightning App | Main application UI |

---

# Author

**Name:** Krish Bansal  
**Department:** Computer Engineering  
**Institute:** Pune Institute of Computer Technology