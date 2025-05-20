 -- Shows how sports club member can view current bookings and reflect booking rules.
 
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
    FB.BookingDate >= CURDATE() OR CB.ClassID IS NOT NULL
ORDER BY
    M.LastName, M.FirstName, FB.BookingDate;
