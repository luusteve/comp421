EXPORT TO data.csv
OF DEL MODIFIED BY NOCHARDEL
SELECT DISTINCT T.country, COUNT(CASE WHEN PS.pid = P.pid THEN 1 END) AS team_goals
FROM Team T
JOIN Player P ON P.national_association_name = T.national_association_name
JOIN Teaminmatch TIM ON TIM.national_association_name = T.national_association_name
JOIN Match M ON TIM.mid = M.mid
LEFT JOIN Playerscored PS ON P.pid = PS.pid
WHERE M.round = 'group-round'
GROUP BY T.country, M.mid
ORDER BY team_goals DESC
FETCH FIRST 5 ROWS ONLY;
