-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Procedure for Returning Number of Members in Each Tier
-- =============================================

DELIMITER //
CREATE PROCEDURE `find_number_of_members_in_each_tier` ()
BEGIN 

SELECT x.membership_tier, count(x.email)
FROM(
 SELECT a.email, a.total, m.membership_tier, m.Min_points, RANK() OVER
    (PARTITION BY a.email ORDER BY  m.Min_points DESC) AS lvl
    FROM(
        SELECT c.email, 
        CASE WHEN b_pay.total IS NULL THEN p_pay.total
        WHEN p_pay.total IS NULL THEN b_pay.total
        ELSE (b_pay.total + p_pay.total) END AS total
        FROM customer c
        LEFT JOIN
   (SELECT b.cust_email AS email, SUM(p.total_paid) AS total
   FROM payment p
   INNER JOIN beauty_service_booking b ON b.payment_id = p.payment_id
   GROUP BY email) b_pay
  ON c.email=b_pay.email
        LEFT JOIN
   (SELECT po.email AS email, SUM(p.total_paid) AS total
   FROM payment p
   INNER JOIN purchase_order po ON po.payment_id = p.payment_id
   GROUP BY email) p_pay
        ON c.email=p_pay.email
       WHERE MEMBER="M"
        ) a
 INNER JOIN membership m ON a.total >=m.Min_points) x
WHERE x.lvl=1
GROUP BY x.membership_tier;

END//

DELIMITER ;

