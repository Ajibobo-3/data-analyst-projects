CREATE TEMPORARY TABLE salary_over_50k
    (employee_id INT,
    first_name VARCHAR (50),
    last_name VARCHAR (50)
    );
    
    INSERT INTO salary_over_50k
    VALUES (1, 'Daniel', 'Verizon');
    
    SELECT * 
    FROM salary_over_50k
    ;
    
    
    
    
    CREATE TEMPORARY TABLE salary_overequal_50k
    (employee_id INT,
    first_name VARCHAR (50),
    last_name VARCHAR (50)
    )
    ;
    
    
    INSERT INTO salary_overequal_50k
    SELECT employee_id, first_name, last_name, salary
    FROM employee_salary
    WHERE salary >= 50000
    ;
    
    
    SELECT * 
    FROM salary_overequal_50k
    ;
    
    
    
      CREATE TEMPORARY TABLE salary_oveequal_50k
      SELECT * FROM employee_salary WHERE salary >50000
    ;
    
    SELECT * 
    FROM salary_oveequal_50k
    ;
    
    
   