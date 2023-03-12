-- i.
SELECT M.mid, M.match_date FROM Match AS M WHERE M.match_date >= (CURRENT DATE) AND M.match_date <= (CURRENT DATE +3 DAY);
-- ii.
SELECT DISTINCT P.pid, P.name, P.shirt_number, P.general_position FROM Player AS P, Playerplaysin AS PPS WHERE P.national_association_name = 'Team SouthKorea' AND PPS.mid = 10 AND PPS.pid = P.pid;
-- iii.
SELECT DISTINCT P.pid, P.name, P.shirt_number, P.general_position FROM Player AS P WHERE P.national_association_name = 'Team SouthKorea';