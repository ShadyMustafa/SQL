SELECT
  company_dim.name AS company_name,
  COUNT(job.job_id) AS job_count
FROM 
  job_postings_fact AS job
JOIN 
  company_dim ON job.company_id = company_dim.company_id
WHERE 
  job.job_health_insurance = TRUE
  AND EXTRACT(QUARTER FROM job.job_posted_date) = 2
  AND EXTRACT(YEAR FROM job.job_posted_date) = 2023
GROUP BY 
  company_dim.name
ORDER BY 
  job_count DESC;
