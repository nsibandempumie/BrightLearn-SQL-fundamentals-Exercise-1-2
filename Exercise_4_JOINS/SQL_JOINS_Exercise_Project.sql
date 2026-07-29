
Student Name: Nompumelelo Nsibande	
BrightLearn SQL JOINS Execrcise		

--------------------------------------------------------------
                 --- PART A INNER JOINS
 --------------------------------------------------------------
--Question 01:
-- I am joining user and subscription on a common column = user_id

SELECT  U.user_id,
        U.user_name, 
        S.subscription_id, 
        S.start_date
FROM workspace.default.users AS U
INNER JOIN workspace.default.subscriptions AS S
        ON U.user_id = S.user_id;

--Question 02:
-- I am joining subscription and plans on plan_id (common_column)
SELECT  s.subscription_id,
        s.user_id,
        s.plan_id,
        s.start_date,
        p.plan_name,
        p.monthly_price
FROM workspace.default.subscriptions AS S
INNER JOIN workspace.default.plans AS P
        ON s.plan_id = p.plan_id;

--Question 03: 
--I am joining viewing_sessions with shows on show_id (common column)

SELECT  v.session_id,
        v.user_id,
        v.watch_minutes,
        s.show_title, 
        S.genre
FROM workspace.default.viewing_sessions AS v
INNER JOIN shows AS s
        ON s.show_id = s.show_id;

--Question 4:
-- Joining users and viewing_sessions on user_id

SELECT  u.user_name, 
        u.country,  
        v.show_id,
        v.session_id, 
        v.watch_minutes
FROM workspace.default.users AS u
INNER JOIN workspace.default.viewing_sessions AS v
        ON U.user_id = V.user_id;

--Question 05:
-- I am inner joining 3 tables: users;subscriptions & plans on a common column = user_id
SELECT
    u.user_name,
    u.country,
    p.plan_name,
    p.monthly_price,
    s.start_date
FROM workspace.default.users u
INNER JOIN workspace.default.subscriptions AS s
INNER JOIN workspace.default.plans AS p
        ON u.user_id = s.user_id AND s.plan_id = p.plan_id;


--------------------------------------------------------------------------------------
                --- Part B: LEFT JOIN
--------------------------------------------------------------------------------------

--Question 06: 
-- I will be joining table subscription to users
-- I will retrieve users table as is the only join subscription ID and the start date

SELECT  u.user_id,
        u.user_name,
        s.subscription_id,
        s.start_date
FROM workspace.default.users AS u
LEFT JOIN workspace.default.subscriptions AS s
        ON u.user_id = s.user_id;

-- Question 07:
--I am LEFT joining plans to subscriptions

SELECT  p.plan_id,
        p.plan_name,
        s.subscription_id,
        s.user_id
FROM workspace.default.plans AS p
LEFT JOIN workspace.default.subscriptions AS s
        ON p.plan_id = s.plan_id;

-- Question 08:
-- Tables used shows and viewing_sessions

SELECT  s.show_id,
        s.show_title,
        v.session_id,
        v.watch_minutes
FROM workspace.default.shows AS s
LEFT JOIN workspace.default.viewing_sessions AS v
        ON s.show_id = v.show_id;


-- Question 09:
-- LEFT joining viewing_sessions to users

SELECT  v.session_id,
        v.show_id,
        v.watch_minutes,
        v.user_id,
        u.user_name
FROM workspace.default.viewing_sessions AS v
LEFT JOIN workspace.default.users AS u
    ON v.user_id = u.user_id;

-- Question 10:
--  LEFT joining three tables: user; subscriptions & plans

SELECT  u.user_name,
        u.country,
        p.plan_name,
        p.monthly_price
FROM users u
LEFT JOIN subscriptions AS s
LEFT JOIN plans AS p
    ON u.user_id = s.user_id AND s.plan_id = p.plan_id;   

--------------------------------------------------------------------------------------
                --- Part C: FULL OUTER JOIN
--------------------------------------------------------------------------------------

-- Question 11:
-- FULL OUTER joining users to subscriptions

SELECT   u.user_id,
         u.user_name,
         s.subscription_id,
         s.start_date
FROM users  AS u
FULL OUTER JOIN subscriptions AS s
    ON u.user_id = s.user_id;

    -- Question 12:
    -- FULLER OUTER joining plans to subscriptions

SELECT  p.plan_id,
        p.plan_name,
        s.subscription_id,
        s.user_id
FROM workspace.default.plans  AS p
FULL OUTER JOIN workspace.default.subscriptions  AS s
    ON p.plan_id = s.plan_id;

   
--Question 13: 
--  FULL OUTER joining shows to viewing_sessions

SELECT  s.show_id,
        s.show_title,
        v.session_id,
        v.watch_minutes
FROM workspace.default.shows  AS s
FULL OUTER JOIN workspace.default.viewing_sessions AS v
    ON s.show_id = v.show_id;

-- Question 14:
-- FULL OUTER joining users to viewing_sessions

SELECT  u.user_id,
        u.user_name,
        v.session_id,
        v.show_id,
        v.watch_minutes
FROM workspace.default.users AS u
FULL OUTER JOIN workspace.default.viewing_sessions AS v
    ON u.user_id = v.user_id;



-- Question 15: 
-- FULL OUTER joining three tables: users; subscriptions & plans
SELECT  u.user_id,
        u.user_name,
        s.subscription_id,
        p.plan_id,
        p.plan_name
FROM workspace.default.users AS u
FULL OUTER JOIN workspace.default.subscriptions AS s
FULL OUTER JOIN workspace.default.plans AS p
    ON u.user_id = s.user_id AND s.plan_id = p.plan_id;




