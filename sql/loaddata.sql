-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.
-- INSERT INTO MYTEST01 (id, value) VALUES(4, 1300);
-- A more complex syntax that saves you typing effort.
-- INSERT INTO MYTEST01 (id, value) VALUES
--  (7, 5144)
-- ,(3, 73423)
-- ,(6, -1222)
-- ;

------------------------------------   TEAM   ------------------------------------

insert into Team (national_association_name, country, group_letter, url) values ('Team Sweden', 'Sweden', 'A', 'sweden.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Guatemala', 'Guatemala', 'A', 'guatemala.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team China', 'China', 'A', 'china.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team USA', 'USA', 'A', 'usa.com');

insert into Team (national_association_name, country, group_letter, url) values ('Team Nigeria', 'Nigeria', 'B', 'nigeria.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Germany', 'Germany', 'B', 'germany.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team France', 'France', 'B', 'france.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Canada', 'Canada', 'B', 'canada.com');

insert into Team (national_association_name, country, group_letter, url) values ('Team Mexico', 'Mexico', 'C', 'mexico.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Brasil', 'Brasil', 'C', 'brasil.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Italy', 'Italy', 'C', 'italy.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Croatia', 'Croatia', 'C', 'croatia.com');

insert into Team (national_association_name, country, group_letter, url) values ('Team South Korea', 'South Korea', 'D', 'southkorea.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Japan', 'Japan', 'D', 'japan.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team Vietnam', 'Vietnam', 'D', 'vietnam.com');
insert into Team (national_association_name, country, group_letter, url) values ('Team India', 'India', 'D', 'india.com');

------------------------------------   STADIUM   ------------------------------------

insert into Stadium (stadium_name, location, capacity) values ('Harcourt Center', '8388 Acker Point', '10000');
insert into Stadium (stadium_name, location, capacity) values ('Joachim Center', '8 Blackbird Plaza', '10000');
insert into Stadium (stadium_name, location, capacity) values ('Mal Center', '8 Dawn Park', '10000');
insert into Stadium (stadium_name, location, capacity) values ('Brent Center', '1853 Eggendart Center', '2000');
insert into Stadium (stadium_name, location, capacity) values ('Ulrich Center', '59414 Ilene Crossing', '2000');
insert into Stadium (stadium_name, location, capacity) values ('Marvin Center', '37015 Moulton Alley', '2000');
insert into Stadium (stadium_name, location, capacity) values ('Terrel Center', '738 Longview Trail', '5000');
insert into Stadium (stadium_name, location, capacity) values ('Edlin Center', '02 Corry Terrace', '5000');
insert into Stadium (stadium_name, location, capacity) values ('Winn Center', '09 Vernon Way', '30000');
insert into Stadium (stadium_name, location, capacity) values ('Aubrey Center', '4104 Kim Pass', '1000');

------------------------------------   Match   ------------------------------------

insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (1, '2023-05-06', '0:07', '90', 'Harcourt Center', 'round-of-16';
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (2, '2023-07-07', '15:06', '90', 'Joachim Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (3, '2023-04-02', '10:23', '90', 'Joachim Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (4, '2023-05-15', '2:16', '91', 'Mal Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (5, '2023-06-23', '3:41', '91', 'Mal Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (6, '2023-04-05', '3:20', '92', 'Brent Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (7, '2023-03-19', '21:57', '92', 'Ulrich Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (8, '2023-03-26', '19:08', '92', 'Marvin Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (9, '2023-03-29', '23:34', '94', 'Marvin Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (10, '2023-05-30', '2:56', '105', 'Terrel Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (11, '2023-03-20', '1:56', '99', 'Terrel Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (12, '2023-08-30', '1:50', '96', 'Terrel Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (13, '2023-06-16', '15:51', '96', 'Edlin Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (14, '2023-05-26', '14:28', '110', 'Winn Center', 'round-of-16');
insert into Match (mid, match_date, match_time, match_length, stadium_name, round) values (15, '2023-05-07', '7:09', '115', 'Aubrey Center', 'round-of-16');

------------------------------------   Teaminmatch   ------------------------------------

insert into Teaminmatch (national_association_name, mid) values ('Team Sweden', '1');
insert into Teaminmatch (national_association_name, mid) values ('Team Guatemala', '1');
insert into Teaminmatch (national_association_name, mid) values ('Team China', '2');
insert into Teaminmatch (national_association_name, mid) values ('Team USA', '2');
insert into Teaminmatch (national_association_name, mid) values ('Team Sweden', '3');
insert into Teaminmatch (national_association_name, mid) values ('Team USA', '3');
insert into Teaminmatch (national_association_name, mid) values ('Team Nigeria', '4');
insert into Teaminmatch (national_association_name, mid) values ('Team Germany', '4');
insert into Teaminmatch (national_association_name, mid) values ('Team France', '5');
insert into Teaminmatch (national_association_name, mid) values ('Team Canada', '5');
insert into Teaminmatch (national_association_name, mid) values ('Team Germany', '6');
insert into Teaminmatch (national_association_name, mid) values ('Team France', '6');
insert into Teaminmatch (national_association_name, mid) values ('Team Mexico', '7');
insert into Teaminmatch (national_association_name, mid) values ('Team Brasil', '7');
insert into Teaminmatch (national_association_name, mid) values ('Team Italy', '8');
insert into Teaminmatch (national_association_name, mid) values ('Team Croatia', '8');
insert into Teaminmatch (national_association_name, mid) values ('Team Italy', '9');
insert into Teaminmatch (national_association_name, mid) values ('Team Brasil', '9');
insert into Teaminmatch (national_association_name, mid) values ('Team South Korea', '10');
insert into Teaminmatch (national_association_name, mid) values ('Team Japan', '10');
insert into Teaminmatch (national_association_name, mid) values ('Team Vietnam', '11');
insert into Teaminmatch (national_association_name, mid) values ('Team India', '11');
insert into Teaminmatch (national_association_name, mid) values ('Team Japan', '12');
insert into Teaminmatch (national_association_name, mid) values ('Team India', '12');

-- Matches outside of group letter
-- insert into Teaminmatch (national_association_name, mid) values ('Team USA', '13');
-- insert into Teaminmatch (national_association_name, mid) values ('Team France', '13');
-- insert into Teaminmatch (national_association_name, mid) values ('Team Italy', '14');
-- insert into Teaminmatch (national_association_name, mid) values ('Team Japan', '14');
-- insert into Teaminmatch (national_association_name, mid) values ('Team Italy', '15');
-- insert into Teaminmatch (national_association_name, mid) values ('Team France', '15');

------------------------------------   Ticket   ------------------------------------

insert into Ticket (tid, seat_number, price, client_email, mid) values (1, 999, 639.53, 'rsleigh0@imgur.com', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (2, 245, 931.42, 'yshellsheere1@dropbox.com', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (3, 367, 2884.3, 'srawcliffe2@paginegialle.it', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (4, 638, 814.67, 'ftollemache3@mozilla.com', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (5, 142, 665.27, 'ssoigoux4@opera.com', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (6, 566, 2818.52, 'dslimme5@oracle.com', '1');
insert into Ticket (tid, seat_number, price, client_email, mid) values (7, 108, 2619.13, 'klinke6@ox.ac.uk', '2');
insert into Ticket (tid, seat_number, price, client_email, mid) values (8, 923, 2983.48, 'abeardsworth7@shutterfly.com', '2');
insert into Ticket (tid, seat_number, price, client_email, mid) values (9, 543, 1770.54, 'lsize8@ihg.com', '2');
insert into Ticket (tid, seat_number, price, client_email, mid) values (10, 176, 2153.11, 'bduckinfield9@stanford.edu', '2');
insert into Ticket (tid, seat_number, price, client_email, mid) values (11, 450, 2747.42, 'pjerransa@gnu.org', '2');
insert into Ticket (tid, seat_number, price, client_email, mid) values (12, 210, 2285.89, 'spatzeltb@tumblr.com', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (13, 743, 2423.47, 'asavaryc@nasa.gov', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (14, 237, 372.47, 'aridingd@homestead.com', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (15, 32, 1906.22, 'jrisebrowe@alexa.com', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (16, 794, 952.24, 'sfenwickf@merriam-webster.com', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (17, 470, 1397.76, 'hsymonesg@psu.edu', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (18, 967, 2619.27, 'traineh@hibu.com', '3');
insert into Ticket (tid, seat_number, price, client_email, mid) values (19, 666, 714.53, 'zchelami@sphinn.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (20, 666, 1199.88, 'voosthoutdevreej@zdnet.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (21, 996, 518.6, 'nferonetk@un.org', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (22, 360, 1708.9, 'rspawelll@about.me', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (23, 64, 1588.0, 'anesterovm@dedecms.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (24, 942, 1469.14, 'gbottonern@simplemachines.org', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (25, 936, 2438.83, 'yblakelocko@bbb.org', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (26, 143, 2315.28, 'vimortp@huffingtonpost.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (27, 652, 1621.78, 'ecastagnetoq@addtoany.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (28, 238, 1405.31, 'mbenoitr@acquirethisname.com', '4');
insert into Ticket (tid, seat_number, price, client_email, mid) values (29, 580, 2655.31, 'mtolmans@google.co.jp', '5');
insert into Ticket (tid, seat_number, price, client_email, mid) values (30, 819, 2960.62, 'hkillimistert@vkontakte.ru', '5');
insert into Ticket (tid, seat_number, price, client_email, mid) values (31, 8, 2220.7, 'jweineru@techcrunch.com', '5');
insert into Ticket (tid, seat_number, price, client_email, mid) values (32, 412, 244.65, 'dhurndallv@skyrock.com', '5');
insert into Ticket (tid, seat_number, price, client_email, mid) values (33, 627, 262.31, 'rrowlinw@google.com.hk', '6');
insert into Ticket (tid, seat_number, price, client_email, mid) values (34, 549, 382.1, 'cdmtrovicx@multiply.com', '6');
insert into Ticket (tid, seat_number, price, client_email, mid) values (35, 257, 2707.96, 'pbueyy@exblog.jp', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (36, 721, 1000.73, 'bwratesz@wikispaces.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (37, 420, 1807.43, 'ccarolan10@meetup.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (38, 675, 639.85, 'bquarterman11@cmu.edu', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (39, 996, 478.04, 'fomahony12@ocn.ne.jp', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (40, 277, 2864.45, 'sselesnick13@opensource.org', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (41, 800, 2120.08, 'eheart14@nasa.gov', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (42, 883, 1895.52, 'dbewsey15@reference.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (43, 674, 2631.07, 'tduckett16@latimes.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (44, 449, 1327.08, 'icartmel17@1688.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (45, 457, 962.87, 'abirkin18@accuweather.com', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (46, 997, 1954.91, 'yheinlein19@mapy.cz', '7');
insert into Ticket (tid, seat_number, price, client_email, mid) values (47, 240, 917.52, 'kholligan1a@yellowpages.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (48, 262, 1197.43, 'rbugge1b@scribd.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (49, 686, 1395.62, 'gcruddace1c@ifeng.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (50, 946, 2686.39, 'llangtree1d@newsvine.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (51, 551, 218.6, 'rhuggill1e@ezinearticles.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (52, 802, 2484.08, 'cgierek1f@acquirethisname.com', '8');
insert into Ticket (tid, seat_number, price, client_email, mid) values (53, 970, 1563.15, 'eelder1g@drupal.org', '9');
insert into Ticket (tid, seat_number, price, client_email, mid) values (54, 987, 700.64, 'jcianelli1h@msn.com', '9');
insert into Ticket (tid, seat_number, price, client_email, mid) values (55, 828, 889.8, 'aickovits1i@flavors.me', '10');
insert into Ticket (tid, seat_number, price, client_email, mid) values (56, 321, 2424.14, 'edewdney1j@myspace.com', '10');
insert into Ticket (tid, seat_number, price, client_email, mid) values (57, 787, 1516.88, 'ahuerta1k@gov.uk', '10');
insert into Ticket (tid, seat_number, price, client_email, mid) values (58, 279, 699.25, 'pdecourt1l@cmu.edu', '10');
insert into Ticket (tid, seat_number, price, client_email, mid) values (59, 284, 985.86, 'dsotheron1m@foxnews.com', '11');
insert into Ticket (tid, seat_number, price, client_email, mid) values (60, 430, 1636.65, 'rkopisch1n@cmu.edu', '11');
insert into Ticket (tid, seat_number, price, client_email, mid) values (61, 312, 2725.55, 'mklemensiewicz1o@mayoclinic.com', '11');
insert into Ticket (tid, seat_number, price, client_email, mid) values (62, 599, 2807.23, 'rshewsmith1p@opensource.org', '11');
insert into Ticket (tid, seat_number, price, client_email, mid) values (63, 535, 1958.63, 'wpunch1q@deliciousdays.com', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (64, 197, 1077.89, 'cscallan1r@symantec.com', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (65, 537, 2008.05, 'lbradtke1s@time.com', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (66, 236, 2360.05, 'spipe1t@miibeian.gov.cn', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (67, 975, 310.53, 'knajera1u@naver.com', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (68, 793, 1368.03, 'gtrever1v@ed.gov', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (69, 426, 380.29, 'ditzkowicz1w@dot.gov', '12');
insert into Ticket (tid, seat_number, price, client_email, mid) values (70, 67, 2761.09, 'jhowarth1x@hud.gov', '12');

------------------------------------   Coach   ------------------------------------

insert into Coach (pid, name, date_of_birth, role, national_association_name) values (1, 'Stacia Bolan', '1965-01-18', 'Head Coach', 'Team Sweden');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (2, 'Dulcy O''Corhane', '1985-01-17', 'Assistant Coach', 'Team Sweden');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (3, 'Delia Drivers', '1986-02-13', 'Assistant Coach', 'Team Sweden');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (4, 'Donna Stubbley', '1950-08-15', 'Head Coach', 'Team Guatemala');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (5, 'Arne Naish', '1981-09-28', 'Head Coach', 'Team China');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (6, 'Purcell Tuftin', '1987-04-14', 'Assistant Coach', 'Team China');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (7, 'Luigi Dampier', '1953-03-02', 'Head Coach', 'Team USA');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (8, 'Christan Ferry', '1956-07-03', 'Head Coach', 'Team Nigeria');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (9, 'Marybeth Longshaw', '1986-08-14', 'Assistant Coach', 'Team Nigeria');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (10, 'Skylar Johnke', '1976-09-10', 'Assistant Coach', 'Team Nigeria');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (11, 'Allianora Irwin', '1951-03-01', 'Head Coach', 'Team Germany');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (12, 'Wain Holdworth', '1961-05-29', 'Assistant Coach', 'Team Germany');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (13, 'Auroora Lightbown', '1966-11-21', 'Head Coach', 'Team France');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (14, 'Bernadine Tapscott', '1986-11-24', 'Head Coach', 'Team Canada');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (15, 'Emalee Feavers', '1983-11-15', 'Head Coach', 'Team Mexico');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (16, 'Eldridge Farn', '1970-09-24', 'Head Coach', 'Team Brasil');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (17, 'Queenie Benediktsson', '1960-02-05', 'Head Coach', 'Team Italy');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (18, 'Benson Milnes', '1960-12-27', 'Head Coach', 'Team Croatia');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (19, 'Chicky Supple', '1981-06-22', 'Assistant Coach', 'Team Croatia');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (20, 'Con Dumbelton', '1965-09-06', 'Head Coach', 'Team South Korea');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (21, 'Helen Adriani', '1961-05-03', 'Head Coach', 'Team Japan');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (22, 'Marlo Clarage', '1989-02-21', 'Assistant Coach', 'Team Japan');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (23, 'Peri Maker', '1984-07-28', 'Head Coach', 'Team Vietnam');
insert into Coach (pid, name, date_of_birth, role, national_association_name) values (24, 'Joyan Burley', '1986-11-26', 'Head Coach', 'Team India');

------------------------------------   Player   ------------------------------------

insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (1, 'Joceline Adney', 'Goalkeeper', '1984-12-09', 4, 'Team Sweden');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (2, 'Lindsay Lehr', 'Midfielder', '1987-10-23', 1, 'Team Sweden');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (3, 'Phyllys Biaggioli', 'Striker', '1988-04-11', 10, 'Team Sweden');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (4, 'Kenyon Clubley', 'Defender', '1983-10-31', 2, 'Team Sweden');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (5, 'Francine Dibley', 'Goalkeeper', '1990-12-22', 3, 'Team Guatemala');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (6, 'Ingamar Roylance', 'Defender', '1990-05-31', 10, 'Team Guatemala');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (7, 'Dolley Mowling', 'Forward', '1993-04-14', 13, 'Team Guatemala');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (8, 'Lurette Shimwell', 'Goalkeeper', '1986-04-04', 1, 'Team Guatemala');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (9, 'Annie Heaselgrave', 'Defender', '1992-12-04', 2, 'Team China');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (10, 'Rachel De Simone', 'Striker', '1986-03-12', 10, 'Team China');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (11, 'Myrah Newsome', 'Striker', '1996-11-12', 3, 'Team China');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (12, 'Corabel Kennewell', 'Midfielder', '1999-02-07', 11, 'Team China');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (13, 'Melissa Smeeth', 'Forward', '1990-05-14', 9, 'Team USA');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (14, 'Antony Shore', 'Striker', '1999-09-18', 10, 'Team USA');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (15, 'Hyman Gabitis', 'Goalkeeper', '1989-03-08', 7, 'Team USA');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (16, 'Neile Gothard', 'Forward', '1985-04-22', 11, 'Team USA');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (17, 'Trudey Fernant', 'Midfielder', '1999-05-31', 10, 'Team Nigeria');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (18, 'Salli Rooke', 'Striker', '1992-09-02', 6, 'Team Nigeria');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (19, 'Clarke Revance', 'Midfielder', '1990-07-21', 8, 'Team Nigeria');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (20, 'Eugine Delamar', 'Defender', '1986-04-30', 7, 'Team Nigeria');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (21, 'Arvin Game', 'Striker', '1981-04-12', 2, 'Team Germany');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (22, 'Baily Ruffle', 'Defender', '1988-06-13', 1, 'Team Germany');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (23, 'Emmott Archbutt', 'Midfielder', '1990-07-27', 4, 'Team Germany');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (24, 'Drew Josefovic', 'Defender', '1984-04-19', 3, 'Team Germany');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (25, 'Keelia Eaden', 'Striker', '1994-02-10', 5, 'Team France');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (26, 'Coralie Kropp', 'Defender', '1987-01-10', 4, 'Team France');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (27, 'Nolly Tupper', 'Goalkeeper', '1994-07-22', 3, 'Team France');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (28, 'Cassie Danielis', 'Defender', '1999-05-08', 11, 'Team France');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (29, 'Franciska Aingel', 'Striker', '1985-06-26', 2, 'Team Canada');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (30, 'Abigael Cuberley', 'Midfielder', '1986-10-08', 3, 'Team Canada');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (31, 'Richie Harte', 'Defender', '1984-07-21', 10, 'Team Canada');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (32, 'Gussie Sabben', 'Defender', '1981-03-28', 4, 'Team Canada');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (33, 'Tucker Tuley', 'Striker', '1983-10-08', 2, 'Team Mexico');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (34, 'Jaynell Pescod', 'Goalkeeper', '1988-06-30', 5, 'Team Mexico');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (35, 'Leroi Washington', 'Defender', '1995-03-21', 10, 'Team Mexico');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (36, 'Prudi Huelin', 'Striker', '1992-07-07', 11, 'Team Mexico');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (37, 'Anabella Oselton', 'Midfielder', '1980-08-27', 3, 'Team Brasil');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (38, 'Culver Wimpey', 'Goalkeeper', '1986-08-09', 10, 'Team Brasil');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (39, 'Powell Joselevitz', 'Defender', '1981-05-07', 1, 'Team Brasil');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (40, 'Kimbell Ugo', 'Midfielder', '1981-05-18', 2, 'Team Brasil');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (41, 'Dalis Kayes', 'Goalkeeper', '1982-08-11', 4, 'Team Italy');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (42, 'Horton Standbrook', 'Midfielder', '1990-05-20', 1, 'Team Italy');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (43, 'Lorelle Thwaite', 'Forward', '1994-10-19', 11, 'Team Italy');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (44, 'Jameson Viant', 'Defender', '1987-08-30', 9, 'Team Italy');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (45, 'Klarika Wisker', 'Striker', '1985-09-26', 4, 'Team Croatia');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (46, 'Petronella Hanhard', 'Goalkeeper', '1984-10-30', 6, 'Team Croatia');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (47, 'Gerhard Nisbith', 'Forward', '1999-08-02', 3, 'Team Croatia');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (48, 'Con Over', 'Striker', '1993-08-15', 2, 'Team Croatia');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (49, 'Junie Peeter', 'Midfielder', '1992-01-16', 1, 'Team South Korea');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (50, 'Petronella Spurrior', 'Goalkeeper', '1990-04-19', 11, 'Team South Korea');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (51, 'Jane Doe', 'Defender', '1981-02-12', 11, 'Team South Korea');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (52, 'Hughie Le Grove', 'Striker', '1991-06-29', 8, 'Team South Korea');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (53, 'Ellene Riddeough', 'Goalkeeper', '1997-05-02', 1, 'Team Japan');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (54, 'Kennett Laverick', 'Striker', '1997-10-14', 2, 'Team Japan');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (55, 'Pooh Capun', 'Striker', '1988-08-19', 3, 'Team Japan');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (56, 'Verine Gingles', 'Goalkeeper', '1989-08-13', 10, 'Team Japan');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (57, 'Glenn Lease', 'Goalkeeper', '1988-03-07', 4, 'Team Vietnam');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (58, 'Loleta Haldenby', 'Striker', '1992-09-05', 5, 'Team Vietnam');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (59, 'Gabriel Althorp', 'Midfielder', '1999-02-11', 2, 'Team Vietnam');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (60, 'Adelle Rignoldes', 'Striker', '1989-04-03', 1, 'Team Vietnam');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (61, 'Jamal Gronaller', 'Striker', '1987-09-24', 10, 'Team India');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (62, 'Kassie Abrahamian', 'Striker', '1998-12-31', 3, 'Team India');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (63, 'Sherwood Harberer', 'Goalkeeper', '1990-12-07', 8, 'Team India');
insert into Player (pid, name, general_position, date_of_birth, shirt_number, national_association_name) values (64, 'Raffaella Farnon', 'Midfielder', '1992-11-10', 4, 'Team India');

------------------------------------   Goal   ------------------------------------

insert into Goal (gid, time_of_goal, is_penalty, period) values (1, '19:52', true, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (2, '5:02', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (3, '15:46', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (4, '13:19', true, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (5, '13:43', true, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (6, '7:13', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (7, '14:53', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (8, '7:31', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (9, '23:45', true, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (10, '5:06', false, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (11, '10:18', true, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (12, '16:57', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (13, '14:40', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (14, '6:23', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (15, '23:25', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (16, '10:32', false, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (17, '8:30', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (18, '22:06', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (19, '17:45', true, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (20, '3:56', false, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (21, '7:30', true, 4);
insert into Goal (gid, time_of_goal, is_penalty, period) values (22, '4:04', true, 4);
insert into Goal (gid, time_of_goal, is_penalty, period) values (23, '8:52', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (24, '19:23', false, 4);
insert into Goal (gid, time_of_goal, is_penalty, period) values (25, '8:32', true, 4);
insert into Goal (gid, time_of_goal, is_penalty, period) values (26, '0:49', false, 2);
insert into Goal (gid, time_of_goal, is_penalty, period) values (27, '5:28', false, 1);
insert into Goal (gid, time_of_goal, is_penalty, period) values (28, '3:59', true, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (29, '16:31', false, 3);
insert into Goal (gid, time_of_goal, is_penalty, period) values (30, '12:33', true, 4);

------------------------------------   Playerplaysin   ------------------------------------

insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (1, 1, 43, 45, 'Striker', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (2, 1, 40, 76, 'Midfielder', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (3, 1, 1, 51, 'Goalkeeper', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (4, 3, 5, 60, 'Forward', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (5, 1, 15, 84, 'Striker', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (6, 1, 31, 64, 'Goalkeeper', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (7, 1, 4, 55, 'Defender', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (8, 1, 26, 62, 'Forward', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (9, 2, 7, 59, 'Forward', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (10, 2, 21, 76, 'Striker', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (11, 2, 23, 45, 'Forward', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (12, 2, 3, 61, 'Midfielder', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (13, 2, 28, 51, 'Forward', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (14, 2, 38, 50, 'Defender', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (15, 3, 29, 86, 'Midfielder', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (16, 2, 1, 88, 'Goalkeeper', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (17, 4, 21, 48, 'Goalkeeper', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (18, 4, 13, 71, 'Goalkeeper', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (19, 4, 31, 60, 'Defender', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (20, 4, 33, 62, 'Defender', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (21, 4, 38, 65, 'Defender', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (22, 4, 8, 84, 'Striker', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (23, 4, 42, 77, 'Midfielder', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (24, 6, 19, 57, 'Midfielder', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (25, 5, 38, 80, 'Striker', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (26, 5, 36, 70, 'Goalkeeper', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (27, 6, 28, 65, 'Goalkeeper', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (28, 6, 22, 53, 'Forward', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (29, 5, 34, 60, 'Goalkeeper', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (30, 5, 21, 68, 'Forward', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (31, 5, 37, 86, 'Goalkeeper', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (32, 5, 8, 75, 'Defender', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (33, 7, 26, 64, 'Striker', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (34, 7, 36, 75, 'Midfielder', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (35, 7, 37, 46, 'Midfielder', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (36, 7, 13, 70, 'Goalkeeper', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (37, 7, 4, 45, 'Midfielder', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (38, 9, 43, 80, 'Defender', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (39, 9, 12, 62, 'Defender', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (40, 9, 18, 53, 'Striker', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (41, 8, 21, 71, 'Forward', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (42, 8, 35, 71, 'Goalkeeper', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (43, 9, 33, 76, 'Striker', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (44, 9, 38, 75, 'Forward', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (45, 8, 25, 86, 'Forward', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (46, 8, 21, 88, 'Forward', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (47, 8, 17, 87, 'Goalkeeper', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (48, 8, 41, 79, 'Striker', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (49, 10, 31, 53, 'Midfielder', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (50, 10, 23, 79, 'Defender', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (51, 10, 29, 86, 'Striker', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (52, 10, 38, 50, 'Striker', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (53, 10, 23, 59, 'Striker', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (54, 10, 34, 61, 'Goalkeeper', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (55, 10, 38, 77, 'Defender', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (56, 12, 25, 69, 'Midfielder', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (57, 11, 8, 73, 'Goalkeeper', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (58, 11, 20, 66, 'Goalkeeper', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (59, 11, 8, 79, 'Goalkeeper', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (60, 11, 18, 76, 'Forward', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (61, 11, 23, 78, 'Defender', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (62, 11, 41, 71, 'Striker', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (63, 12, 12, 50, 'Goalkeeper', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (64, 12, 16, 53, 'Goalkeeper', 2, false);

insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (1, 3, 23, 53, 'Forward', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (52, 12, 27, 68, 'Goalkeeper', 1, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (28, 5, 8, 70, 'Goalkeeper', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (64, 11, 2, 70, 'Striker', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (15, 7, 2, 81, 'Forward', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (44, 8, 34, 60, 'Defender', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (13, 3, 39, 62, 'Striker', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (24, 4, 17, 81, 'Goalkeeper', 2, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (4, 1, 20, 57, 'Forward', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (23, 6, 19, 71, 'Forward', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (63, 11, 30, 45, 'Forward', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (14, 3, 4, 74, 'Defender', 1, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (56, 10, 25, 45, 'Striker', 2, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (42, 9, 44, 70, 'Striker', 0, false);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (27, 5, 34, 48, 'Forward', 0, true);
insert into Playerplaysin (pid, mid, enter_time, exit_time, position, number_of_yellow_card, received_red_card) values (3, 3, 43, 80, 'Striker', 0, false);

------------------------------------   Playerscored   ------------------------------------

insert into Playerscored (pid, gid, mid) values (51, 1, 10);
insert into Playerscored (pid, gid, mid) values (16, 2, 2);
insert into Playerscored (pid, gid, mid) values (53, 3, 10);
insert into Playerscored (pid, gid, mid) values (10, 4, 2);
insert into Playerscored (pid, gid, mid) values (39, 5, 9);
insert into Playerscored (pid, gid, mid) values (23, 6, 4);
insert into Playerscored (pid, gid, mid) values (28, 7, 6);
insert into Playerscored (pid, gid, mid) values (23, 8, 4);
insert into Playerscored (pid, gid, mid) values (58, 9, 11);
insert into Playerscored (pid, gid, mid) values (2, 10, 1);
insert into Playerscored (pid, gid, mid) values (10, 11, 2);
insert into Playerscored (pid, gid, mid) values (51, 12, 10);
insert into Playerscored (pid, gid, mid) values (59, 13, 11);
insert into Playerscored (pid, gid, mid) values (40, 14, 9);
insert into Playerscored (pid, gid, mid) values (62, 15, 12);
insert into Playerscored (pid, gid, mid) values (34, 16, 7);
insert into Playerscored (pid, gid, mid) values (15, 17, 3);
insert into Playerscored (pid, gid, mid) values (40, 18, 9);
insert into Playerscored (pid, gid, mid) values (4, 19, 1);
insert into Playerscored (pid, gid, mid) values (59, 20, 11);
insert into Playerscored (pid, gid, mid) values (54, 21, 10);
insert into Playerscored (pid, gid, mid) values (53, 22, 10);
insert into Playerscored (pid, gid, mid) values (11, 23, 2);
insert into Playerscored (pid, gid, mid) values (57, 24, 11);
insert into Playerscored (pid, gid, mid) values (60, 25, 11);
insert into Playerscored (pid, gid, mid) values (4, 26, 3);
insert into Playerscored (pid, gid, mid) values (35, 27, 7);
insert into Playerscored (pid, gid, mid) values (55, 28, 10);
insert into Playerscored (pid, gid, mid) values (51, 29, 10);
insert into Playerscored (pid, gid, mid) values (21, 30, 4);

------------------------------------   Referee   ------------------------------------

insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (1, 'Karissa Jordanson', '1982-06-13', 10, 'Germany');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (2, 'Wilhelmina Teissier', '1980-01-29', 10, 'Greece');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (3, 'Sloan Witch', '1977-05-16', 3, 'United States');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (4, 'Lyndsie Vautrey', '1979-06-15', 10, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (5, 'Kaylee Everitt', '1987-02-02', 13, 'Russia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (6, 'Janenna Ping', '1974-03-28', 13, 'East Timor');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (7, 'Vonny Wragge', '1978-07-20', 12, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (8, 'Kinny Lamblot', '1974-08-19', 4, 'Bangladesh');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (9, 'Meggy Silwood', '1979-12-08', 4, 'Portugal');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (10, 'Andrew Anning', '1977-04-13', 9, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (11, 'Bert Mayfield', '1986-04-11', 10, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (12, 'Markos Keasy', '1979-01-23', 9, 'Belarus');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (13, 'Andreana Whittleton', '1989-06-10', 6, 'Mauritius');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (14, 'Corbie Hellmore', '1972-09-08', 10, 'Ethiopia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (15, 'Hillier Semken', '1974-03-29', 8, 'United States');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (16, 'Caryn Moran', '1990-02-05', 4, 'Brazil');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (17, 'Fiona Cissell', '1989-01-15', 12, 'France');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (18, 'Lincoln Rosas', '1985-06-27', 4, 'Portugal');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (19, 'Gherardo Lermouth', '1976-11-16', 11, 'Malaysia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (20, 'Leonanie Fuidge', '1987-03-11', 15, 'United States');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (21, 'Leandra Stollenbecker', '1974-02-03', 6, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (22, 'Frederik Newvell', '1972-08-02', 13, 'United States');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (23, 'Raychel Goering', '1981-08-21', 14, 'United States');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (24, 'Xylia Manuaud', '1970-11-06', 9, 'Portugal');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (25, 'Dusty Drezzer', '1979-03-28', 10, 'Russia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (26, 'Lorri Betjeman', '1976-11-15', 14, 'Russia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (27, 'Buddie Keightley', '1971-02-06', 6, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (28, 'Bethanne Ovanesian', '1976-05-28', 4, 'Botswana');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (29, 'Velma While', '1976-08-12', 3, 'Ukraine');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (30, 'Rustin Ormesher', '1976-06-25', 12, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (31, 'Nolana Balcock', '1989-03-06', 6, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (32, 'Alana Chatwood', '1976-02-04', 13, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (33, 'Lilly MacSherry', '1984-09-28', 7, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (34, 'Meredithe Leitche', '1985-10-14', 13, 'Sierra Leone');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (35, 'Matty Burgwyn', '1981-11-16', 12, 'Russia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (36, 'Cary Wellard', '1989-02-21', 4, 'Portugal');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (37, 'Madlen Houndsom', '1971-02-13', 14, 'Russia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (38, 'Gussi Cheverton', '1973-01-02', 4, 'Indonesia');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (39, 'Fairlie Biesinger', '1983-12-25', 14, 'Yemen');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (40, 'Nonah Farnorth', '1976-04-17', 5, 'Sweden');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (41, 'Emmy Itzcak', '1970-08-18', 4, 'South Korea');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (42, 'Al Lukash', '1973-11-08', 6, 'Brazil');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (43, 'Bebe Fancet', '1988-11-28', 5, 'Cyprus');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (44, 'Drucy Sperry', '1974-03-26', 8, 'Philippines');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (45, 'Kay Dewhirst', '1972-02-26', 3, 'Philippines');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (46, 'Orv Paddemore', '1987-10-18', 3, 'China');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (47, 'Devlin Merrigan', '1976-05-31', 5, 'Thailand');
insert into Referee (pid, name, date_of_birth, years_of_experience, country) values (48, 'Nobe Gouthier', '1975-08-26', 7, 'Cuba');

------------------------------------   Refereeoversees   ------------------------------------

insert into Refereeoversees (pid, mid) values (21, 11);
insert into Refereeoversees (pid, mid) values (36, 4);
insert into Refereeoversees (pid, mid) values (5, 10);
insert into Refereeoversees (pid, mid) values (12, 12);
insert into Refereeoversees (pid, mid) values (42, 1);
insert into Refereeoversees (pid, mid) values (46, 13);
insert into Refereeoversees (pid, mid) values (15, 15);
insert into Refereeoversees (pid, mid) values (15, 10);
insert into Refereeoversees (pid, mid) values (17, 15);
insert into Refereeoversees (pid, mid) values (40, 2);
insert into Refereeoversees (pid, mid) values (16, 14);
insert into Refereeoversees (pid, mid) values (48, 7);
insert into Refereeoversees (pid, mid) values (6, 14);
insert into Refereeoversees (pid, mid) values (29, 2);
insert into Refereeoversees (pid, mid) values (12, 3);
insert into Refereeoversees (pid, mid) values (12, 6);
insert into Refereeoversees (pid, mid) values (27, 2);
insert into Refereeoversees (pid, mid) values (42, 4);
insert into Refereeoversees (pid, mid) values (42, 13);
insert into Refereeoversees (pid, mid) values (31, 11);
insert into Refereeoversees (pid, mid) values (36, 5);
insert into Refereeoversees (pid, mid) values (6, 4);
insert into Refereeoversees (pid, mid) values (42, 15);
insert into Refereeoversees (pid, mid) values (23, 10);
insert into Refereeoversees (pid, mid) values (44, 11);
insert into Refereeoversees (pid, mid) values (10, 5);
insert into Refereeoversees (pid, mid) values (41, 7);
insert into Refereeoversees (pid, mid) values (25, 12);
insert into Refereeoversees (pid, mid) values (1, 7);
insert into Refereeoversees (pid, mid) values (31, 5);
insert into Refereeoversees (pid, mid) values (16, 5);
insert into Refereeoversees (pid, mid) values (1, 15);
insert into Refereeoversees (pid, mid) values (44, 6);
insert into Refereeoversees (pid, mid) values (41, 13);
insert into Refereeoversees (pid, mid) values (14, 13);
insert into Refereeoversees (pid, mid) values (40, 3);
insert into Refereeoversees (pid, mid) values (12, 15);
insert into Refereeoversees (pid, mid) values (5, 6);
insert into Refereeoversees (pid, mid) values (3, 6);
insert into Refereeoversees (pid, mid) values (40, 11);
insert into Refereeoversees (pid, mid) values (2, 13);
insert into Refereeoversees (pid, mid) values (42, 9);
insert into Refereeoversees (pid, mid) values (24, 4);
insert into Refereeoversees (pid, mid) values (1, 4);
insert into Refereeoversees (pid, mid) values (18, 7);
insert into Refereeoversees (pid, mid) values (4, 11);
insert into Refereeoversees (pid, mid) values (22, 1);
insert into Refereeoversees (pid, mid) values (7, 12);
insert into Refereeoversees (pid, mid) values (22, 15);
insert into Refereeoversees (pid, mid) values (14, 1);
insert into Refereeoversees (pid, mid) values (20, 10);
insert into Refereeoversees (pid, mid) values (47, 14);
insert into Refereeoversees (pid, mid) values (45, 9);
insert into Refereeoversees (pid, mid) values (16, 2);
insert into Refereeoversees (pid, mid) values (23, 4);
insert into Refereeoversees (pid, mid) values (30, 1);
insert into Refereeoversees (pid, mid) values (1, 9);
insert into Refereeoversees (pid, mid) values (15, 2);
insert into Refereeoversees (pid, mid) values (14, 6);
insert into Refereeoversees (pid, mid) values (39, 2);