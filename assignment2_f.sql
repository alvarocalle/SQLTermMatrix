-----------------------------------------------------------------------------
-- Two words: Write a SQL statement to count the number of unique documents
-- that contain both the word 'transactions' and the word 'world'. 
-- (Hint: Find the docs that contain one word and the docs that contain
--        the other word separately, then find the intersection.)
----------------------------------------------------------------------------- 
SELECT count(*) FROM(
SELECT DISTINCT docid FROM frequency
WHERE term='transactions'
INTERSECT
SELECT DISTINCT docid FROM frequency
WHERE term='world'
)x;
