-- Find companies that have at least 2 Chinese speaking users.

-- Table: playbook_users

select company_id,count(*) from playbook_users
where language = 'chinese'
group by company_id
having count(*)>=2;