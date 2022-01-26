# 18 igual a 'Basil', o sobrenome (last_name) igual a 'Strooper' e o sexo (gender) seja igual a 'M'.


USE psdb;

SELECT * FROM employees
WHERE first_name = 'Basil'
AND last_name = 'Strooper'
AND gender = 'M';