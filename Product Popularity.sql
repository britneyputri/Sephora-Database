-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Procedure for Ranking Products in Terms of Popularity
-- =============================================

DELIMITER //
CREATE PROCEDURE `product popularity` ()
BEGIN 

SELECT p.product_id, product_name, count(quantity) AS Quantities_sold
FROM purchase_order_product pop
LEFT JOIN product p ON p.product_id = pop.product_id
GROUP BY product_id
ORDER BY Quantities_sold DESC; 

END//

DELIMITER ;

