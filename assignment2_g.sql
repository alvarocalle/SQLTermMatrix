----------------------------------------------
-- Multiply: Express A X B as a SQL query
----------------------------------------------
--SELECT a.row_num, b.col_num, SUM(a.value*b.value)
SELECT SUM(a.value*b.value)
FROM a, b
WHERE a.col_num = b.row_num
-- pick element (2,3)
AND a.row_num = 2 AND b.col_num = 3
----------------------
GROUP BY a.row_num, b.col_num;
