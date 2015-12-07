---------------------------------------------------------
-- Select project: Write a query that's equivalent to
--
-- πterm(σdocid=10398_txt_earn and count=1(frequency))
--
--------------------------------------------------------- 
SELECT count(*) FROM(
SELECT term FROM frequency
WHERE docid='10398_txt_earn' AND count=1
) x;
