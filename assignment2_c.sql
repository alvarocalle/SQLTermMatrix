---------------------------------------------------------
-- Union: Write a query that's equivalent to
--
-- πterm(σdocid=10398_txt_earn and count=1(frequency)) U
-- πterm(σdocid=925_txt_trade and count=1(frequency))
--
--------------------------------------------------------- 
-- UNION count disctinct elements. We have two ways:
-- First
SELECT count(*) FROM(
SELECT term FROM frequency
WHERE docid='10398_txt_earn' AND count=1
UNION -- ALL
SELECT term FROM frequency
WHERE docid='925_txt_trade' AND count=1
) x;

-- Second (shorter)
-- SELECT count(DISTINCT term) FROM frequency
-- WHERE docid IN ('10398_txt_earn','925_txt_trade') AND count=1;
