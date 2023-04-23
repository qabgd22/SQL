/* Find the 5 oldest users.*/
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

/*What day of the week do most users register on? */
-- dow - day of the week
SELECT EXTRACT (dow from created_at ) AS "Day of week", COUNT(*) 
FROM users
GROUP BY 1
ORDER BY 2 DESC;

/*version 2*/
SELECT to_char(created_at, 'Day') AS day, COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;

/*Find the users who have never posted a photo*/
SELECT u.id, u.username, ph.id FROM users u
LEFT JOIN photos ph
ON u.id = ph.user_id
WHERE ph.id IS NULL
ORDER BY u.id;

/*How many times does the average user post?*/
/*total number of photos/total number of users*/
SELECT ROUND((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users),2) AS avg_posts_by_user;

/*user ranking by postings higher to lower*/
SELECT u.username, COUNT(ph.id) AS Number_of_posts_per_user
FROM users u
INNER JOIN photos ph
ON u.id = ph.user_id
GROUP BY u.id
ORDER BY 2 DESC;

/*Total Posts by users */
SELECT SUM(Total_posts.Number_of_posts_per_user)
FROM(SELECT u.username, COUNT(ph.id) AS Number_of_posts_per_user
	 FROM users u
	 INNER JOIN photos ph
	 ON u.id = ph.user_id
	 GROUP BY u.id) AS Total_posts;



