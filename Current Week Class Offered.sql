-- Display the current week class offered by the club including staff and number of class size.

SELECT c.Title AS ClassTitle, c.ScheduleDatetime AS ClassSchedule, f.FacilityName AS Facility, s.FirstName AS InstructorFirstName, s.LastName AS InstructorLastName
FROM Classes c
JOIN Facility f ON c.FacilityID = f.FacilityID
JOIN Staff s ON c.Instructor = s.StaffID
WHERE WEEK(NOW()) = WEEK(c.ScheduleDatetime)
  AND YEAR(NOW()) = YEAR(c.ScheduleDatetime)
ORDER BY InstructorLastName, InstructorFirstName, ClassSchedule;
