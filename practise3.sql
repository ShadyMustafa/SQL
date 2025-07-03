CREATE TABLE jan_2023_jobs AS
    SELECT *
    FROM
        job_postings_fact AS job
    WHERE
         EXTRACT(MONTH FROM job.job_posted_date) = 1


CREATE TABLE feb_2023_jobs AS
    SELECT
        *
    FROM
        job_postings_fact AS job
    WHERE 
        EXTRACT(MONTH FROM job.job_posted_date) = 2
        
SELECT
    job_posted_date
FROM
    feb_2023_jobs