---Task 1: INNER JOIN (Matching Records Only)---

SELECT Student Name,

SELECT Classess.Class Name,

FROM

Students

INNER JOIN Classess ON Students.Class ID = Classess.Class ID;

ORDER BY Student Name;

---Task 2: LEFT JOIN (All Left Table Records)---

    Employee.FirstName + ' ' + LastName,

    Department.Dnam

FROM Employee

LEFT JOIN Department

    ON Employee.Dnum = Department.Dnum

  ORDER BY Employee.FirstName;


---Task 3: RIGHT JOIN (All Right Table Records)---

SELECT 

    Customers.CustomerName,

    Orders.OrderID

    FROM Orders

 RIGHT JOIN Customers

  ON Orders.CustomerID = Customers.CustomerID

ORDER BY Customers.CustomerName;

---Task 4: FULL OUTER JOIN (All Records from Both Tables)---


SELECT 
    Products.ProductName,

    Sales.SaleID

FROM Products

FULL OUTER JOIN Sales

    ON Products.ProductID = Sales.ProductID

ORDER BY Products.ProductName;


---Task 5: SELF JOIN (Table Joined with Itself)---

SELECT 

    E.FirstName,

    M.FirstName AS ManagerName

FROM Employee E

LEFT JOIN Employee M

    ON E.Supervisor_ssn = M.SSN

ORDER BY E.FirstName;


---Task 6: CROSS JOIN (All Combinations)---

SELECT 

    Colors.ColorName,

    Sizes.SizeName

FROM Colors

CROSS JOIN Sizes

ORDER BY Colors.ColorName, Sizes.SizeName;


---Task 7: INNER JOIN with Multiple Tables---

SELECT 
    Students.Name,

    Classes.ClassName,

    Teachers.TeacherName

FROM Students

INNER JOIN Classes

    ON Students.ClassID = Classes.ClassID

INNER JOIN Teachers

    ON Classes.TeacherID = Teachers.TeacherID

ORDER BY Classes.ClassName;


---Task 8: LEFT JOIN with Missing Data Check---

SELECT 

    Books.Title,

    Authors.AuthorName

FROM Books

LEFT JOIN Authors

    ON Books.AuthorID = Authors.AuthorID

ORDER BY Books.Title;


---Task 9: RIGHT JOIN with Filtering---


SELECT 

Orders.OrderID , Payments.Amount

FROM Payments 

RIGHT JOIN Orders ON Payments.OrderID = Orders.OrderID

WHERE Payments.Amount > 0 OR Payments.Amount IS NULL

ORDER BY Orders.OrderID;



---Task 10: FULL OUTER JOIN with Data Comparison---

SELECT 

    Products.ProductName,

    Inventory.StockQty,

    Sales.SoldQty

FROM Products

FULL OUTER JOIN Inventory

    ON Products.ProductID = Inventory.ProductID

FULL OUTER JOIN Sales

    ON Products.ProductID = Sales.ProductID

ORDER BY Products.ProductName;


---Task 11: SELF JOIN for Hierarchy Levels---

SELECT 

    E.Name AS EmployeeName,

    M.Name AS ManagerName,

    T.Name AS TopManagerName

FROM Employees E

LEFT JOIN Employees M

    ON E.ManagerID = M.EmployeeID

LEFT JOIN Employees T

    ON M.ManagerID = T.EmployeeID

ORDER BY E.Name;


---Task 12: CROSS JOIN with Business Scenario---

SELECT 

Products.ProductName , Stores.StoreName

FROM Products 

CROSS JOIN Stores

ORDER BY ProductName , StoreName;


---Task 13: INNER JOIN with Aggregation---

SELECT 

    Orders.OrderID,

    SUM(OrderDetails.Quantity) AS TotalQuantity

FROM Orders

INNER JOIN OrderDetails

    ON Orders.OrderID = OrderDetails.OrderID

GROUP BY Orders.OrderID

ORDER BY TotalQuantity DESC;


---Task 14: LEFT JOIN with COUNT---

SELECT 

    Customers.CustomerID,

    Customers.Name,

    COUNT(Orders.OrderID) AS OrderCount

FROM Customers

LEFT JOIN Orders

    ON Customers.CustomerID = Orders.CustomerID

GROUP BY Customers.CustomerID, Customers.Name

ORDER BY OrderCount DESC;

---Task 15: Mixed JOIN Challenge---

SELECT 

    Students.Name,

    Classes.ClassName,

    Courses.CourseName

FROM Students

LEFT JOIN Classes

    ON Students.ClassID = Classes.ClassID

INNER JOIN Enrollments

    ON Students.StudentID = Enrollments.StudentID

LEFT JOIN Courses

    ON Enrollments.CourseID = Courses.CourseID

ORDER BY Students.Name;


