WITH score (mid, national_association_name, goal_num) AS (
    SELECT TIM.mid, TIM.national_association_name, COUNT(CASE WHEN PS.mid = TIM.mid THEN 1 END) AS goal1
    FROM Teaminmatch TIM, Playerscored PS
    WHERE PS.pid IN (SELECT P.pid FROM Player P WHERE P.national_association_name = TIM.national_association_name)
    GROUP BY TIM.mid, TIM.national_association_name
)
SELECT M.mid, 
TIM1.national_association_name AS Team1, 
TIM2.national_association_name AS Team2, 
M.round,
COUNT(CASE WHEN T.mid = M.mid THEN 1 END) AS seats_sold,
S1.goal_num AS score1,
S2.goal_num AS score2
FROM 
Match M,
Ticket T 
JOIN Teaminmatch TIM1 ON TIM1.mid = M.mid 
JOIN Teaminmatch TIM2 ON TIM2.mid = M.mid
JOIN score S1 ON S1.national_association_name = TIM1.national_association_name AND TIM1.mid = S1.mid
JOIN score S2 ON S2.national_association_name = TIM2.national_association_name AND TIM2.mid = S2.mid
WHERE TIM2.national_association_name < TIM1.national_association_name
GROUP BY M.mid, M.round, TIM1.national_association_name, TIM2.national_association_name, S1.goal_num, S2.goal_num;