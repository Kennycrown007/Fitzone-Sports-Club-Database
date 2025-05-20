-- Show most active members monthly (most bookings and most attendance)

SELECT
    M.MemberID,
    M.FirstName,
    M.LastName,
    COUNT(DISTINCT FB.FacilityBookingID) AS TotalBookings,
    COUNT(DISTINCT A.AttendanceID) AS TotalAttendance
FROM
    Members M
LEFT JOIN
    FacilityBooking FB ON M.MemberID = FB.ClubMemberID
LEFT JOIN
    ClassBooking CB ON M.MemberID = CB.ClubMemberID
LEFT JOIN
    Attendance A ON CB.ClassBookingID = A.ClassBookingID
WHERE
    YEAR(FB.BookingDate) = YEAR(CURDATE()) AND MONTH(FB.BookingDate) = MONTH(CURDATE())
    OR YEAR(A.AttendanceDate) = YEAR(CURDATE()) AND MONTH(A.AttendanceDate) = MONTH(CURDATE())
GROUP BY
    M.MemberID, M.FirstName, M.LastName
ORDER BY
    TotalBookings DESC, TotalAttendance DESC;
