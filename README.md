Copy .env file:

bash
Copy
Edit
cp .env.example .env
Configure database in .env:

env
Copy
Edit
DB_DATABASE=attendance_tracker
DB_USERNAME=root
DB_PASSWORD=Chithmi2005@
Generate app key:

bash
Copy
Edit
php artisan key:generate
Run migrations & seeders:

bash
Copy
Edit
php artisan migrate --seed
Start the server:

bash
Copy
Edit
php artisan serve
App will be running at http://localhost:8000

✅ API Endpoints
Method	Endpoint	Description
GET	/api/classes	List all classes
GET	/api/teachers/{id}/classes	Teacher's classes
POST	/api/attendance/mark	Mark daily attendance
GET	/api/teacher/class/{id}/attendance-summary	Class attendance summary
GET	/api/attendance/records?date=YYYY-MM-DD	Daily records

🔐 Auth (Optional)
Use Sanctum or Keycloak for authentication if needed.

👨‍💻 Developer
Chithmi Dilaksha

yaml
Copy
Edit

---

### ✅ 3. `database/README.md`

```markdown
# 🗃️ Attendance Tracker – Database

This is the **MySQL database schema** used in the Attendance Tracker System.

## 🏗️ Database: `attendance_tracker`

### 🔑 Connection

```env
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=attendance_tracker
DB_USERNAME=root
DB_PASSWORD=Chithmi2005@
📋 Tables
departments – Faculty departments

classes – Class groups per department

subjects – Subjects under departments

students – Student records

student_subjects – Many-to-many (students & subjects)

attendance_records – Daily attendance

teachers – Teacher login & info

🔄 Seeders Included
DepartmentsSeeder

ClassesSeeder

SubjectsSeeder

TeachersSeeder

StudentsSeeder

⛏️ Migrations
Run via Laravel:

bash
Copy
Edit
php artisan migrate --seed
