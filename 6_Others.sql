USE ian;

INSERT INTO test
VALUE(1, 46233, 0.124, "happy");
SELECT * FROM test;

INSERT INTO test_2 SELECT * FROM test;
SELECT * FROM test_2;

UPDATE test
SET col1=1, col2=1.0, col3='happiness' # WHERE condition needs to be stated otherwise entire table will be updated
WHERE id=1;
SELECT * FROM test;

DELETE FROM test # DELETE can delete data but size of file will not be changed but you can roll back to the orginal
WHERE id=1;
SELECT * FROM test;

TRUNCATE TABLE test; # TRUNCATE can delete all data and index. Size of file will be reduced but you can't roll back
SELECT * FROM test;

DROP TABLE test; # DROP can delete a table
DROP DATABASE ian;