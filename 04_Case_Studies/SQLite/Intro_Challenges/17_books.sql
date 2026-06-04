/*
Books have many pages and each page has a lot of words.

In this challenge, we'll calculate cumulative metrics about these books up to each page. 
Follow these steps:

-> First, calculate the following cumulative aggregations for each book up to each page:
(i)   Total words (total_words)
(ii)  Maximum words (max_words)
(iii) Minimum words (min_words)
(iv)  Average words (avg_words)

-> Then, for each page within a book, calculate the ratio: (avg_words - min_words)/(total_words - min_words)

-> Finally, for each book:
(i)  Densely rank the pages based on this ratio in ascending order (call this column ratio_rank)
(ii) Order the results first by book and then by ratio_rank
Note: All aggregations (total, max, min, avg) should be cumulative,
    meaning they should consider all pages up to and including the current page for each book.
*/
WITH calculated_table AS (
SELECT book, page, 
    SUM(words) OVER(
        PARTITION BY book
        ORDER BY page
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
    ) AS total_words, 
    MAX(words) OVER(
        PARTITION BY book
        ORDER BY page
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
    ) AS max_words,
    MIN(words) OVER(
        PARTITION BY book
        ORDER BY page
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
    ) AS min_words,
    AVG(words) OVER(
        PARTITION BY book
        ORDER BY page
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
    ) AS avg_words
FROM books
)

SELECT book, page, total_words, max_words, min_words, avg_words,
    DENSE_RANK() OVER(PARTITION BY book ORDER BY (avg_words - min_words)/(total_words - min_words)) AS ratio_rank
FROM calculated_table
ORDER BY book, ratio_rank; 