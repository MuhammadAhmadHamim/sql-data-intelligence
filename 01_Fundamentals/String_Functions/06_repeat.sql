/*
You are building a dashboard for a movie review site.
Instead of just showing a number (like 4), you want to show actual stars (*) to make it look more professional.

Write a query that returns the movie_title and a second column called star_display.
The star_display should show the * character repeated as many times as the rating_score.

Example: For "Jaws", the result should be ****.

Hint: You can use a column name (like rating_score) as the second argument in the function!
*/
SELECT movie_title, 
    REPEAT('*' ,rating_score) AS star_display
FROM movie_reviews