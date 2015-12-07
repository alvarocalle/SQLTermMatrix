------------------------------------------------
-- Select: Write a query that's equivalent to
--
-- σdocid=10398_txt_earn(frequency)
--
------------------------------------------------
SELECT count(*) FROM frequency
WHERE docid='10398_txt_earn';
