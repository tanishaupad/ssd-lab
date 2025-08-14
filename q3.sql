DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE count_sub INT;
    DECLARE new_id INT;

    -- Check if subscriber already exists
    SELECT COUNT(*) INTO count_sub
    FROM Subscribers
    WHERE SubscriberName = subName;

    -- If not exists, find max SubscriberID and add 1
    IF count_sub = 0 THEN
        SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO new_id
        FROM Subscribers;

        INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
        VALUES (new_id, subName, CURDATE());
    END IF;
END$$

DELIMITER ;
