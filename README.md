# 🏋️‍♂️ FitZone Sports Club Management System – SQL Design

This repository contains the complete SQL-based backend design for the **FitZone Sports Club Management System**. It covers the database structure, ERD, and a set of SQL queries to manage and retrieve essential data related to members, staff, bookings, facilities, and classes.

---

## 📦 Repository Structure

- `ERD_Diagram.png` - Visual representation of entity relationships.
- `create_tables.sql` - SQL script for table creation.
- `queries.sql` - SQL queries for analytics and reporting.

---

## 🧩 Purpose

The primary objective of this project is to:
- Maintain structured records for members, staff, classes, and bookings.
- Ensure data integrity and enforce business rules (e.g., booking limits).
- Provide robust query support for class scheduling, usage tracking, and administrative insights.

---

## 🗃️ Database Entities

### 1. `Members`
Stores all registered club members with personal and medical info.

- `MemberID` (PK)
- `FirstName`
- `LastName`
- `Date_of_Birth`
- `Address`
- `ContactNumber`
- `Medical_Condition`
- `Email`

### 2. `Staff`
Holds data for instructors and administrative personnel.

- `StaffID` (PK)
- `FirstName`
- `LastName`
- `Address`
- `ContactNumber`
- `Club_Role`
- `Email`

### 3. `Facility`
Details all facilities available for booking.

- `FacilityID` (PK)
- `FacilityName`
- `FacilityType`

### 4. `Classes`
Stores class info including instructor and location.

- `ClassID` (PK)
- `Title`
- `InstructorID` (FK → Staff)
- `FacilityID` (FK → Facility)
- `Schedule`
- `MaxParticipants`

### 5. `FacilityBooking`
Tracks facility reservations made by members.

- `FacilityBookingID` (PK)
- `ClubMemberID` (FK → Members)
- `ClubStaffID` (FK → Staff)
- `FacilityID` (FK → Facility)
- `BookingDate`
- `Duration`

### 6. `ClassBooking`
Tracks member participation in classes.

- `ClassBookingID` (PK)
- `ClubMemberID` (FK → Members)
- `ClassID` (FK → Classes)

### 7. `Attendance`
Records attendance for each class booking.

- `AttendanceID` (PK)
- `ClubStaffID` (FK → Staff)
- `ClassBookingID` (FK → ClassBooking)
- `AttendanceDate`

---

## 🧾 SQL Scripts

Located in: `create_tables.sql`

Includes commands to:
- Create all 7 tables
- Define primary and foreign keys
- Establish data types and constraints

---

## 📊 SQL Queries

Located in: `queries.sql`

### ✅ Display Current Week Activities by Member

Retrieves facility and class bookings for the current week, showing:
- Member name
- Booking date and duration
- Class title and location

### ✅ Search Classes by Instructor (This Week)

Lists all classes being taught by instructors during the current week, with:
- Class title
- Facility
- Schedule
- Instructor name

### ✅ Most Active Members (Monthly)

Ranks members by:
- Total facility bookings
- Total class attendance
For the current month.


---

## 🛡️ Data Integrity

Implemented using:
- **Primary Keys** to uniquely identify records
- **Foreign Keys** to maintain referential relationships
- **Normalization** to reduce redundancy
- **Constraints** on bookings, attendance, and class participation

---

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

## 📬 Contact

Created by Aromona Kehinde Gabriel. For queries or contributions, feel free to reach out or open a pull request.


## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://www.datascienceportfol.io/KehindeAromona)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/kehinde-gabriel-aromona-808578119/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/kennycrown7)

