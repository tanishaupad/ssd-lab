DELIMITER $$

CREATE PROCEDURE LoopSubscribersWatchHistory()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_id INT;
    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    loop_all: LOOP
        FETCH cur INTO sub_id;
        IF done THEN
            LEAVE loop_all;
        END IF;
        CALL GetWatchHistoryBySubscriber(sub_id);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;
