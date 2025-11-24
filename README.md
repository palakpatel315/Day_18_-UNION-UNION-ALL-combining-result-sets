
# 📘 21 Days SQL Challenge – Day 18  
### **Topic:** UNION & UNION ALL (Combining Result Sets)

---

## 🎯 Objective  
Day 18 focused on learning how to **combine data from multiple SELECT queries** using `UNION` and `UNION ALL`.  
I learned how these operations help merge results cleanly, avoid duplicates when needed, and label different datasets within one output.

---

## 🧠 Key Learnings  

- `UNION` merges results and **removes duplicates**.  
- `UNION ALL` merges results **without removing duplicates** (more efficient).  
- All SELECT queries in a UNION must have:  
  - Equal number of columns  
  - Compatible data types  
- The final `ORDER BY` applies **after combining** both result sets.  
- Useful for unifying patient & staff lists, multi-table reporting, and analytics dashboards.

---

## 🧩 Daily Challenge

### **Question:**  
Create a comprehensive personnel and patient list showing:  
- identifier (patient_id or staff_id)  
- full name  
- type ('Patient' or 'Staff')  
- associated service  

Include only those in **'surgery'** or **'emergency'** services.  
Sort the final result by **type → service → name**.

---

### ✅ **SQL Query Used**

```sql
SELECT p.patient_id AS Identifier, p.name AS Name, 'Patient' AS type, p.service
FROM patients p
WHERE p.service IN ('surgery', 'emergency')
UNION ALL
SELECT s.staff_id AS Identifier, s.staff_name AS Name, 'Staff' AS type, s.service
FROM staff s
WHERE s.service IN ('surgery', 'emergency')
ORDER BY type, service, Name;
```

## 📸 **SQL Queries**

![Check_SQL Query File](https://github.com/palakpatel315/Day_18_-UNION-UNION-ALL-combining-result-sets/tree/main/Day_18_SQL_Quieres)


---
Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

---

## 👩‍💻 **About Me**
**Palak Patel**  
*Aspiring Data Analyst | Skilled in SQL, Power BI, Excel*  
📍 Passionate about turning data into insights and solving real-world business problems.  

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/palak-patel-0711242a0/)

---
