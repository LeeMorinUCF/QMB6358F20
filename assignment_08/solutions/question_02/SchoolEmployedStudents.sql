.mode columns
.header on
.output SchoolEmployedStudents.out

SELECT
    s.FirstName,
    s.LastName,
    s.Status,
    e.department,
    s.GPA
FROM
    StudentRegister AS s
INNER JOIN
    EmployeeTable AS e
ON s.NID = e.nid
WHERE
    s.Status = 'Full time';

.output stdout
