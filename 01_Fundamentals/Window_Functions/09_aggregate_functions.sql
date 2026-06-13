/*
For each book, display the book name, its total pages, the number of words on each page,
and calculate:

-> The maximum number of words found on any page in that book
-> The average number of words per page for the entire book
-> The difference between the current page's words and the book's average words per page

Display the results ordered by book and page number.

Return the following columns:

(i)   book
(ii)  page
(iii) words
(iv)  max_words_in_book
(v)   avg_words_per_page
(vi)  diff_from_avg
*/
SELECT book, page, words,
    MAX(words) OVER(PARTITION BY book) AS max_words_in_book,
    AVG(words) OVER(PARTITION BY book) AS avg_words_per_page,
    words - AVG(words) OVER(PARTITION BY book) AS diff_from_avg
FROM books
ORDER BY book, page;
