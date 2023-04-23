/*Total numbers of users who have posted at least one time */
SELECT COUNT(Distinct u.id) AS Number_of_users_with_posts
FROM users u
INNER JOIN photos ph
ON u.id = ph.user_id;

/*What are the top 5 most commonly used hashtags?*/
SELECT tag_name, COUNT(tag_name) AS total_per_hash_tag
FROM tags
JOIN photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY 2 DESC
LIMIT 5;

/*Find users who have never commented on a photo*/
SELECT u.username,cm.comment_text
FROM users u
LEFT JOIN "comments" cm
ON u.id = cm.user_id
WHERE cm.user_id IS NULL;

--2nd solution
SELECT u.username, cm.comment_text
FROM users u
LEFT JOIN "comments" cm ON u.id = cm.user_id
GROUP BY u.id,cm.comment_text
HAVING cm.comment_text IS NULL;

--Number of users without comments
SELECT COUNT(*) AS Number_of_users_without_comments FROM
(SELECT u.username,cm.comment_text
FROM users u
LEFT JOIN "comments" cm
ON u.id = cm.user_id
WHERE cm.user_id IS NULL) AS Number_of_users_without_comments;

--Number of users with comments
SELECT COUNT(*) AS Number_of_users_with_comments FROM
(SELECT u.username,cm.comment_text
FROM users u
LEFT JOIN "comments" cm
ON u.id = cm.user_id
WHERE cm.user_id IS NOT NULL) AS Number_of_users_with_comments;

/*Find users who have ever commented on a photo*/
SELECT u.username,cm.comment_text
FROM users u
LEFT JOIN "comments" cm
ON u.id = cm.user_id
WHERE cm.user_id IS NOT NULL;

/*Find how many users posted at least once */
SELECT COUNT(DISTINCT u.id) AS Total_number_of_users_with_posts
FROM users u
INNER JOIN photos ph
ON u.id = ph.user_id;

