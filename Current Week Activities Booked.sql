-- Display current week activities booked by club members


SELECT
    M.FirstName AS MemberFirstName,
    M.LastName AS MemberLastName,
    F.FacilityName,
    FB.BookingDate,
    FB.Duration,
    C.Title AS ClassName,
    CB.ClassBookingID
FROM
    Members M
LEFT JOIN
    FacilityBooking FB ON M.MemberID = FB.ClubMemberID
LEFT JOIN
    Facility F ON FB.FacilityID = F.FacilityID
LEFT JOIN
    ClassBooking CB ON M.MemberID = CB.ClubMemberID
LEFT JOIN
    Classes C ON CB.ClassID = C.ClassID
WHERE
    WEEK(FB.BookingDate) = WEEK(CURDATE())
    OR WEEK(CB.ClassBookingID) = WEEK(CURDATE())
ORDER BY
    M.LastName, M.FirstName, FB.BookingDate;
