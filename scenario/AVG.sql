CREATE TABLE tblValues(Val int)

INSERT INTO tblValues(val) VALUES(100)
INSERT INTO tblValues(val) VALUES(200)
INSERT INTO tblValues(val) VALUES(NULL)
INSERT INTO tblValues(val) VALUES('')

SELECT AVG(Val) AVERAGE FROM tblValues