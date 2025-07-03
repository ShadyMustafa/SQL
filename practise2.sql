SELECT
    job_title,
    job.job_posted_date ::DATE as DATE,
    company.name as company_name,
    job.job_health_insurance AS health_insurance
FROM
    job_postings_fact AS job
LEFT JOIN
    company_dim AS company on job.company_id = company.company_id
WHERE 
    job.job_health_insurance =  TRUE AND
    (
        EXTRACT(QUARTER FROM job.job_posted_date) = 2 AND
        EXTRACT(YEAR FROM job.job_posted_date) = 2023
    )



