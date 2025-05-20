-- monthly boookings

SELECT
    m.FirstName AS MemberFirstName,
    m.LastName AS MemberLastName,
    f.FacilityName AS BookedFacility,
    c.Title AS BookedClass,
    fb.BookingDate AS BookingDate
FROM Members m
LEFT JOIN FacilityBooking fb ON m.MemberID = fb.ClubMemberID
LEFT JOIN Facility f ON fb.FacilityID = f.FacilityID
LEFT JOIN ClassBooking cb ON m.MemberID = cb.ClubMemberID
LEFT JOIN Classes c ON cb.ClassID = c.ClassID
WHERE MONTH(fb.BookingDate) = 8 -- Specify the desired month here
   OR MONTH(cb.ClassBookingID) = 8 -- Specify the desired month here
ORDER BY m.LastName, m.FirstName;
