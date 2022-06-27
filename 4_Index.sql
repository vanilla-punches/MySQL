CREATE INDEX Col1idx
ON test (col1);
SHOW INDEX FROM test;

CREATE UNIQUE INDEX Col2idx
ON test (col1);
SHOW INDEX FROM test;

ALTER TABLE test
ADD FULLTEXT Col3idx(col3); # Index_type becomes FULLTEXT
SHOW INDEX FROM test;

ALTER TABLE test # First option of deleting index
DROP INDEX Col3idx;
SHOW INDEX FROM test;

DROP INDEX Col2idx ON test; #Second option of deleting index
SHOW INDEX FROM test;