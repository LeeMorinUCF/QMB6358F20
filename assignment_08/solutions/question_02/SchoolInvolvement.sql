.mode column
.headers on
.output SchoolInvolvement.out

SELECT
    t.NID,
    t.FirstName,
    t.LastName,
    t.Employer,
    t.job_title AS JobTitle,
    t.Program,
    t.Position,
    t.[Course 1],
    t.[Course 2]
From
(
SELECT
    e.nid AS NID,
    e.first_name AS FirstName,
    e.last_name AS LastName,
    e.department AS Employer,
    e.job_title,
    ex.program,
    ex.position,
    s.[Course 1],
    s.[Course 2]
FROM
    EmployeeTable AS e
LEFT JOIN ExtracurricularList AS ex ON e.nID = ex.Nid
LEFT JOIN StudentRegister AS s ON e.nid = s.NID
UNION
SELECT
    ex.NID,
    ex.FirstName,
    ex.LastName,
    e.department,
    e.job_title,
    ex.Program,
    ex.Position,
    s.[Course 1],
    s.[Course 2]
FROM ExtracurricularList AS ex
LEFT JOIN EmployeeTable AS e ON ex.NID = e.nid
LEFT JOIN StudentRegister AS s ON ex.NID = s.NID
UNION
SELECT
    s.NID,
    s.FirstName,
    s.LastName,
    e.department,
    e.job_title,
    ex.Program,
    ex.Position,
    s.[Course 1],
    s.[Course 2]
FROM StudentRegister AS s
LEFT JOIN EmployeeTable AS e ON s.NID = e.nid
LEFT JOIN ExtracurricularList AS ex ON s.NID = ex.NID
) AS t
WHERE LENGTH(t.NID) = 6;

.output stdout
