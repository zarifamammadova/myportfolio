# Furniture Sales Overview Dashboard
This project contains an interactive Excel dashboard and a dataset analyzing furniture sales across the United States. The analysis focuses on sales, profit, shipping duration, and customer segments.

## Dashboard
An Excel dashboard (sheet:Dashboard) was built to summarize:
Total sales and profit,quantity by state, category, and shipping mode
Monthly trends in sales performance
Top-performing products and sub-categories
Duration between order and shipping dates


**Preview**

<img width="1412" height="676" alt="furniture sales overwiew" src="https://github.com/zarifamammadova/myportfolio/blob/main/Screenshot%202025-07-19%20185432.png" />

**The dashboard allows quick business insights and can help identify opportunities to optimize logistics and boost profitability.**

**Dataset**
The raw data (sheet: Dataset) contains:
**9994 rows** and **21 columns**

**Purpose**
This project showcases my data visualization skills using Excel and highlights how raw data can be transformed into actionable insights.

------------------------------------------------------------------------------------------
#  Sales Performance Dashboard

This project is an interactive **Excel dashboard** designed to analyze and visualize sales performance using key metrics and dynamic elements.

---

##  KPIs Analyzed

The following Key Performance Indicators (KPIs) were used:
-  **Sales** (Current Year vs Previous Year)
-  **Quantity Sold**
-  **Cost**
-  **Profit**
-  **Year-over-Year (YoY) Growth**

---

## 🛠️ Tools & Features Used

- Excel Pivot Tables
- Slicers for dynamic filtering
- Named Ranges for dynamic references
- Conditional Formatting
- Interactive Text Boxes linked to KPIs
- Custom formatting and design

---

##  Purpose

The goal of this dashboard is to:

- Identify key trends in sales and cost over time
- Compare current vs previous year performance
- Help decision-makers quickly interpret results
- Create a user-friendly and clean interface

---

## 📎 Preview

<img width="1412" height="676" alt="salesperformance" src="https://github.com/user-attachments/assets/e17208cf-3806-4104-a247-8fcf326a0a26" />


---------------------

##  Live Demo / View

<a href=https://github.com/zarifamammadova/myportfolio/blob/main/salesperformance.xlsx>DataSet</a>

##  Conclusion

This project allowed me to practice building dynamic dashboards with Excel and visualize sales data in a meaningful way. It demonstrates my ability to combine data analysis with design to create clear and insightful reporting tools.  
I look forward to applying similar skills in real-world business scenarios.

## License

This project is open-source and
Feel free to use, modify, and share it with proper attribution.


--------------------------------------------------------------------------------------------------
# Employee Insights Dashboard
## DataSet Used 
- <a href=https://github.com/zarifamammadova/my-excel-dashboard2/blob/main/SECONDDASHBOARD.xlsx>DataSet</a>
------------------------------------------------------------
This Excel dashboard presents key employee metrics such as:

- Average number of years employees have worked
- Percentage of employees satisfied with their job
- Employee count per department
- Year-over-year comparison of tenure

Features

- Dynamic Pivot Tables
- GETPIVOTDATA formulas for real-time KPI extraction
- Line chart to visualize average tenure over years
- Clean layout ready for dashboard presentation
- Dashboard interaction <a href="https://github.com/zarifamammadova/my-excel-dashboard2/blob/main/Screenshot%202025-06-22%20164227.png">View Dashboard</a>

## Dasboard 
![Screenshot 2025-06-22 164159](https://github.com/user-attachments/assets/fe466061-edb3-4836-89ba-6a075b5dfe05)

## Conclusion

This Excel dashboard provides a clear and concise overview of key employee metrics, such as tenure, satisfaction, and department-wise distribution. By leveraging Pivot Tables and dynamic formulas like GETPIVOTDATA, the report enables real-time analysis and data-driven insights. The visualizations, particularly the line chart of average tenure over years, help highlight trends and patterns in employee retention.

This project demonstrates the practical application of Excel tools in HR analytics and can be a valuable component in a data analyst or HR specialist's portfolio.


-----------------------------


##  License

This project is shared for educational purposes only. Please do not reuse the data or visualizations in commercial projects without permission.

------------------

# Excel Sales & Discount Dashboard 

## English
## DataSet Used 
- <a href="https://github.com/zarifamammadova/my-excel-dashboard/blob/main/sample%20(Recovered).xlsx">DataSet</a>

###  Features:
- Total and average actual sales revenue  
- Average and total discount percentage  
- List Price vs Actual Price difference  
- Sales distribution by Country, Region, and Store  
- Product and salesperson-level sales insights  
- Slicers for interactive filtering (Country, Region, Store)

###  Tools Used:
- Microsoft Excel  
- Pivot Tables and Pivot Charts  
- Slicers  
- Custom KPIs & Formulas  
- Basic Dashboard layout with interactive elements
- Dashboard interaction <a href="https://github.com/zarifamammadova/my-excel-dashboard/blob/main/Screenshot%202025-06-21%20132509.png">View Dashboard</a>

## Dasboard 
![Screenshot 2025-06-21 132509](https://github.com/user-attachments/assets/3e5231ba-ab51-4c70-98f8-b0d8951e1bdf)


## Conclusion
This project marks my first step into data analytics using Microsoft Excel.
Through this dashboard, I gained hands-on experience with pivot tables, slicers, KPI creation, and turning raw data into meaningful visuals.
I’m proud of this milestone and excited to continue learning tools like Power BI, SQL, and Python to deepen my skills in data analytics and business intelligence.

--------------------------------------------------------
## License and Data Source

This project is created for educational and personal learning purposes only.  
The dataset used in this dashboard was sourced from the [Excel Online Practice](https://excel-practice-online.com/) website, which provides publicly available sample data for Excel training.

All data rights belong to their respective owners.  
No commercial use is intended.

------------------------------------------------
# 📊 SQL Solutions – AdventureWorks Database

This repository contains SQL queries based on the **AdventureWorks** sample database. The queries cover a wide range of SQL techniques such as `JOINs`, `Window Functions`, `Filtering`, `Aggregation`, and more. Each query is crafted to solve practical data-related problems.


## 📁 File: `sample-query.sql`

### 1️⃣ Employee Full Names and Cities
**Description:** Retrieves full names of employees (`FirstName` + `LastName`) along with their city. Results are ordered by `LastName` and `FirstName`.

---

### 2️⃣ Filtered Sales Orders
**Description:** Retrieves sales orders where:
- `OrderQty` is greater than 5,
- `UnitPriceDiscount` is less than 1000,
- `TotalDue` is greater than 100.

---

## 📁 File: `employee-vacation.sql`

### 3️⃣ Least Vacation Hours by Job Title
**Description:** Uses `FIRST_VALUE()` to find the employee with the **least number of vacation hours** in each job title category.

---

## 📁 File: `sales-quota-analysis.sql`

### 4️⃣ First and Last Quarter SalesQuota Difference
**Description:** For employees with `BusinessEntityID` between 274 and 275 and years after 2005, calculates the difference between the **first and last quarter's sales quotas** using `FIRST_VALUE()` and `LAST_VALUE()`.

---

### 5️⃣ Next Year's SalesQuota using `LEAD()`
**Description:** For `BusinessEntityID = 277` and years 2011–2012, fetches the current year's quota and the next year's using the `LEAD()` window function.

---

### 6️⃣ Next Quarter's SalesQuota and Difference
**Description:** For `BusinessEntityID = 277` in 2012 and 2013, shows the quota and difference between current and next quarter using `LEAD()`.

---

## 📁 File: `inventory-ranking.sql`

### 7️⃣ Product Ranking by Location
**Description:** Uses `DENSE_RANK()` to rank products based on their location. Useful for inventory management insights.

---

## ✅ Technologies Used

- **SQL Server (T-SQL)**
- **AdventureWorks Sample Database**

---

## 📌 Purpose

This repository was created for learning and practicing SQL with real-world database structures. Each query is written with clarity and structured for reusability.

Feel free to explore, fork, or contribute!




