-- 1. Total number of users
SELECT COUNT(*) AS total_users
FROM users;

-- 2. Users by country
SELECT 
    country,
    COUNT(*) AS user_count
FROM users
GROUP BY country
ORDER BY user_count DESC;

-- 3. Email domain distribution
SELECT 
    SPLIT_PART(email, '@', 2) AS domain,
    COUNT(*) AS domain_count
FROM users
GROUP BY domain
ORDER BY domain_count DESC;

-- 4. Monthly registration trend
SELECT 
    DATE_TRUNC('month', created_at) AS registration_month,
    COUNT(*) AS registrations
FROM users
GROUP BY registration_month
ORDER BY registration_month;

-- 5. Latest 3 registered users
SELECT *
FROM users
ORDER BY created_at DESC
LIMIT 3;
