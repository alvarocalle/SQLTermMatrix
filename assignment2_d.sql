---------------------------------------------------------
--
-- Count: Write a SQL statement to count the number
-- of unique documents containing the word "law" or
-- containing the word "legal" (If a document contains
-- both law and legal, it should only be counted once)
--
--------------------------------------------------------- 
SELECT count(DISTINCT docid) FROM frequency
WHERE term='law' OR term='legal';
