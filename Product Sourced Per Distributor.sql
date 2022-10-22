-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Procedure for Finding Number of Products Per Distributor
-- =============================================

DELIMITER //
CREATE PROCEDURE `Number of Products (Distributor)` ()
BEGIN 

SELECT distributor_id, count(DISTINCT product_id) AS number_of_products 
FROM shipment s 
GROUP BY distributor_id; 

END//

DELIMITER ;

