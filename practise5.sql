SELECT
    skill.skill_id,
    skill.skills AS skill_name,
    jobs.job_title,
    COUNT(*) AS skill_count
FROM
    skills_job_dim AS sjd
JOIN
    job_postings_fact AS jobs ON sjd.job_id = jobs.job_id
JOIN
    skills_dim AS skill ON sjd.skill_id = skill.skill_id
WHERE
    jobs.job_title LIKE '%Data Analyst%'
GROUP BY
    skill.skill_id, skill.skills, jobs.job_title
ORDER BY
    skill_count DESC
LIMIT 10;
