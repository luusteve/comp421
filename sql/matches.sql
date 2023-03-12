WITH MT AS 
(
SELECT DISTINCT TM.national_association_name, ROWNUMBER() OVER () rownumber
FROM Teaminmatch AS TM
WHERE TM.mid
);

SELECT M.mid, M.match_date
FROM Match AS M
WHERE M.match_date >= (CURRENT DATE) AND M.match_date <= (CURRENT DATE +3 DAY)
;


