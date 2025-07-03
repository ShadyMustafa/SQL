SELECT
    company.company_id,
    company.name AS company_name,
    number_of_posts,
    CASE
        WHEN number_of_posts < 10 THEN 'Small Company'
        WHEN number_of_posts >=10 AND number_of_posts < 50 THEN 'Medium Company'
        WHEN number_of_posts > 50 THEN 'BIG Company'
    END AS company_size
FROM
    (
        SELECT
            company_id,
            COUNT(company_id) AS number_of_posts
        FROM
            job_postings_fact
        GROUP BY
            company_id
    ) AS company_result
LEFT JOIN
    company_dim AS company ON company_result.company_id = company.company_id