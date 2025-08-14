CS6.302 – Software System Development
Lab 2 – SQL Stored Procedures and Cursors
Submission Files:
    q1.sql – ListAllSubscribers() procedure
    q2.sql – GetWatchHistoryBySubscriber() procedure
    q3.sql – AddSubscriberIfNotExists() procedure
    q4.sql – SendWatchTimeReport() procedure
    q5.sql – LoopSubscribersWatchHistory() procedure

---

STEPS TO EXECUTE:

1. Open MySQL Workbench and connect to your MySQL server.

2. Create the database and use it:
    CREATE DATABASE lab2_db;
    USE lab2_db;

3. Run the table creation and sample data script provided in the assignment:
    (Copy-paste the CREATE TABLE and INSERT INTO statements from the PDF)

4. Execute each .sql file in order (q1.sql → q5.sql):
    Example:
        SOURCE /path/to/q1.sql;
        SOURCE /path/to/q2.sql;
        SOURCE /path/to/q3.sql;
        SOURCE /path/to/q4.sql;
        SOURCE /path/to/q5.sql;

5. Testing:
    - Q1: CALL ListAllSubscribers();
    - Q2: CALL GetWatchHistoryBySubscriber(<SubscriberID>);
    - Q3: CALL AddSubscriberIfNotExists('New Subscriber Name');
    - Q4: CALL SendWatchTimeReport();
    - Q5: CALL LoopSubscribersWatchHistory();

---

Git Repository Link:
