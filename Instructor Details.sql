-- Show full details of class, with instructors and facility

SELECT
    C.ClassID,
    C.Title AS ClassName,
    CONCAT(S.FirstName, ' ', S.LastName) AS Instructor,
    F.FacilityName,
    C.Schedule,
    C.MaxParticipants
FROM
    Classes C
LEFT JOIN
    Staff S ON C.Instructor = S.StaffID
LEFT JOIN
    Facility F ON C.FacilityID = F.FacilityID
ORDER BY
    C.ClassID;
