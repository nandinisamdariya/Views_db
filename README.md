# 🧠 Task 7: Creating Views (MySQL)

## 📋 Objective

Demonstrate the use of SQL **Views** to simplify complex queries, abstract logic, and improve data security using **MySQL Workbench**.

---

## 👩‍💻 Author

**Nandini Samdariya**

---

## 🛠️ Tools Used

* **MySQL Workbench**
* **Database Name**: `task7_creating_views`

---

## 🧱 Database Schema

### 🔹 Departments Table

| Column   | Data Type   | Constraint  |
| -------- | ----------- | ----------- |
| DeptID   | INT         | PRIMARY KEY |
| DeptName | VARCHAR(50) |             |

### 🔹 Employees Table

| Column  | Data Type    | Constraint                        |
| ------- | ------------ | --------------------------------- |
| EmpID   | INT          | PRIMARY KEY                       |
| EmpName | VARCHAR(100) |                                   |
| Salary  | INT          |                                   |
| DeptID  | INT          | FOREIGN KEY → Departments(DeptID) |

---

## 🧪 Sample Data

* **3 Departments**: IT, HR, Sales
* **5 Employees** with various salaries and departments

---

## 📌 Key SQL Concepts Demonstrated

### ✅ 1. Creating a View with `JOIN`

`EmpDeptView` shows employee name, salary, and department name.

### ✅ 2. Filtering Data from the View

Query employees earning more than ₹70,000 using the view.

### ✅ 3. Creating a Secure/Public View

`EmpPublicView` exposes only `EmpName` and `DeptID`, hiding salary for privacy.

### ✅ 4. Dropping Views

Use `DROP VIEW IF EXISTS` for cleanup or re-creation of views.

---

## 🧾 File Summary

| File Name               | Description                                                    |
| ----------------------- | -------------------------------------------------------------- |
| `Task7_CreateViews.sql` | SQL script to create tables, views, and queries                |
| `README.md`             | Documentation for Task 7 with schema, objectives, and features |

---

