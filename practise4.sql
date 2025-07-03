SELECT
    job_title,
    salary_year_avg AS SALARY,
    CASE
        WHEN salary_year_avg > 50000 THEN 'HIGH SALARY'
        WHEN salary_year_avg = 50000 THEN 'STANDARD SALARY'
        WHEN salary_year_avg < 50000 THEN 'LOW SALARY'
    END AS salary_level
FROM
    job_postings_fact
WHERE
    job_title LIKE '%Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC