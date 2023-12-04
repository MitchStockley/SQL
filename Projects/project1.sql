SELECT * FROM public."Employees"
SELECT * FROM public."Department"
SELECT * FROM public."Overtime Hours"
SELECT * FROM public."Roles"
SELECT * FROM public."Salaries"

INSERT INTO public."Employees" (emp_id, first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES 
  ('1', 'Alice', 'Johnson', 'Female', 'malanshof', 'alice@gmail.com', 1111, 2222, 3333, 8888),
  ('2', 'Michael', 'Brown', 'Male', 'randburg', 'michael@gmail.com', 50000, 4444, 5555, 6666),
  ('3', 'Emily', 'Jones', 'Female', 'pretoria', 'emily@gmail.com', 38000, 7777, 8888, 9999),
  ('4', 'David', 'Miller', 'Male', 'durban', 'david@gmail.com', 45000, 1234, 5678, 9876),
  ('5', 'Sophia', 'Williams', 'Female', 'capetown', 'sophia@gmail.com', 41000, 2468, 1357, 9753);


INSERT INTO public."Department" (depart_id, depart_name, depart_city)
VALUES 
    ('1111', 'Finance', 'Johannesburg'),
    ('50000', 'Sales', 'Durban'),
    ('38000', 'Operations', 'Pretoria'),
    ('45000', 'Legal', 'Cape Town'),
    ('41000', 'Logistics', 'Bloemfontein');
	
INSERT INTO public."Roles" (role_id, role)
VALUES 
    ('2222', 'Manager'),
    ('4444', 'Sales Representative'),
    ('7777', 'Operations Specialist'),
    ('1234', 'Legal Counsel'),
    ('2468', 'Logistics Coordinator');

INSERT INTO public."Salaries" (salary_id, salary_pa)
VALUES 
    ('3333', 3333),
    ('5555', 5555),
    ('8888', 8888),
    ('5678', 5678),
    ('1357', 1357);
	
	INSERT INTO public."Overtime Hours" (overtime_id, overtime_hours)
VALUES 
    ('8888', 8888),
    ('6666', 6666),
    ('9999', 9999),
    ('9876', 9876),
    ('9753', 9753);
	
UPDATE public."Salaries"
SET 
    salary_pa = 48000
WHERE salary_id = '3333';

UPDATE public."Salaries"
SET 
    salary_pa = 10000
WHERE salary_id = '1357';

UPDATE public."Salaries"
SET 
    salary_pa = 200000
WHERE salary_id = '5678';

UPDATE public."Salaries"
SET 
    salary_pa = 68000
WHERE salary_id = '8888';

UPDATE public."Salaries"
SET 
    salary_pa = 148000
WHERE salary_id = '5555';

UPDATE public."Overtime Hours"
SET 
    overtime_hours = 67
WHERE overtime_id = '8888';

UPDATE public."Overtime Hours"
SET 
    overtime_hours = 47
WHERE overtime_id = '9753';

UPDATE public."Overtime Hours"
SET 
    overtime_hours = 107
WHERE overtime_id = '9876';

UPDATE public."Overtime Hours"
SET 
    overtime_hours = 87
WHERE overtime_id = '9999';

UPDATE public."Overtime Hours"
SET 
    overtime_hours = 607
WHERE overtime_id = '6666';




	--left join to show epartment name, job title, salary figure and overtime hours worked. 

SELECT
    E.emp_id,
    E.first_name,
    E.surname,
    D.depart_name AS department_name,
    R.role AS job_title,
    S.salary_pa AS salary_figure,
    OH.overtime_hours AS overtime_hours_worked
FROM
    public."Employees" E
LEFT JOIN
    public."Department" D ON E.depart_id = D.depart_id
LEFT JOIN
    public."Roles" R ON E.role_id = R.role_id
LEFT JOIN
    public."Salaries" S ON E.salary_id = S.salary_id
LEFT JOIN
    public."Overtime Hours" OH ON E.overtime_id = OH.overtime_id;



