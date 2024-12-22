CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    birth_date TEXT NOT NULL,
    sex TEXT CHECK (sex IN ('M', 'F')),
    salary integer,
    branch_id INTEGER,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);