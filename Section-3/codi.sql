giBEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cohort" (
	"cohort_id"	INTEGER,
	"number"	INTEGER,
	"start_date"	date,
	"end_date"	date,
	PRIMARY KEY("cohort_id")
);
CREATE TABLE IF NOT EXISTS "students" (
	"id"	INTEGER,
	"student_no"	INTEGER,
	"ssn"	INTEGER UNIQUE,
	"first_name"	TEXT,
	"last_name"	varchar(255),
	"DOB"	date,
	"skills"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "department" (
	"id"	INTEGER,
	"name"	TEXT,
	"office"	INTEGER,
	"speciality"	TEXT,
	"mentor_id"	INTEGER,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "mentor" (
	"id"	INTEGER,
	"ssn"	INTEGER UNIQUE,
	"First_name"	TEXT,
	"last_name"	TEXT,
	"DOB"	date,
	"seniority_level"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "topics" (
	"id"	INTEGER,
	"title"	TEXT,
	"description"	TEXT,
	"mentor_id"	INTEGER,
	PRIMARY KEY("id")
);
COMMIT;
