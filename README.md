
# RTO and Public Interaction System

## Description
The RTO and Public Interaction System is a Java Swing + JDBC-based desktop application that streamlines the interaction between the public and the Regional Transport Office (RTO). It allows users to apply for services like driving licenses, vehicle registration, and complaints. Admins can view applications, update their status, and respond to complaints.

## Features

### For Public Users:
- Register/Login
- Apply for Driving License
- Apply for Vehicle Registration
- Submit Complaints
- Track Application & Complaint Status

### For RTO Officers (Admin):
- Secure Admin Login
- View & Approve Applications
- Respond to Complaints
- Manage System Data

## Technologies Used
- Java (Core + Swing GUI)
- MySQL
- JDBC
- Eclipse IDE

## Database Schema

### Tables:
- `users(id, name, email, phone, password, address)`
- `license_applications(id, user_id, type, status, date_applied)`
- `vehicle_registrations(id, user_id, vehicle_no, type, model, status)`
- `complaints(id, user_id, subject, message, status, reply)`
- `admins(id, username, password)`

### Sample Admin Credentials:
```sql
INSERT INTO admins (username, password) VALUES ('admin', 'admin123');
```

## Setup Instructions

1. Clone or unzip the project folder.
2. Import it into Eclipse as a Java Project.
3. Run `setup.sql` in MySQL to initialize the database.
4. Update `DBConnection.java` with your MySQL credentials.
5. Run `Main.java` to launch the system.

## Future Improvements
- OTP/Email Verification
- SMS Alerts
- PDF generation for licenses/registrations
- Mobile App Integration

---
© 2025 Developed for academic and educational purposes.
