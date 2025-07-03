WITH avg_salary_per_title AS (
    SELECT job_title, AVG(salary_year_avg)AS avg_salary
    FROM job_postings_fact
    GROUP BY job_title
)
SELECT *
FROM avg_salary_per_title
WHERE avg_salary < 60000;


SELECT
    job_title,
    salary_year_avg
FROM (
    SELECT
        *
    FROM
        job_postings_fact
    ORDER BY    
    salary_year_avg DESC
    LIMIT 5
)
