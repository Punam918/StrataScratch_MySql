SELECT employee_id, profession, concat(first_name, ' ' , last_name) as name from employee_list
where last_name = 'Johnson' AND Profession ='Doctor'
order by employee_id;