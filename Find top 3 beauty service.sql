-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Procedure for Finding Top 3 Beauty Services
-- =============================================

DELIMITER //
CREATE PROCEDURE `find_top_3_beauty_service` ()
BEGIN 

SELECT bsb.service_id, bs.service_type, (count(booking_id)*bs.price) as sales
FROM beauty_service_booking bsb
LEFT JOIN beauty_service bs ON bsb.service_id = bs.service_id
GROUP BY bsb.service_id, bs.service_type
ORDER BY sales DESC
LIMIT 3;

END//

DELIMITER ;

