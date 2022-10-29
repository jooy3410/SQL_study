-- �� �����
CREATE VIEW V_EMP 
    AS SELECT EMPNO, ENAME 
         FROM EMP;
         
-- �並 ������ ��ȸ
SELECT *
 FROM V_EMP;

-- �信 ������ ������ ���� �ʴ´�.
INSERT INTO V_EMP VALUES(102, '������');
-- �並 ������ ������ �����ϴ� ���� �����͵� �����ǰ� ���� ���̺��� �����͵� ������(����Ǿ����� ����� ����� �ƴϴ�.)
DELETE FROM V_EMP
WHERE EMPNO = 100;

COMMIT;

SELECT *
 FROM EMP;

-- �信 ALTER ���� ������� �ʴ´�.
-- ALTER VIEW V_EMP
--    ADD (AGE NUMBER(2) DEFAULT 1);

-- �� �����ϴ� �ڵ�
DROP VIEW V_EMP;

DESC EMP;
-- ���ϴ� �÷��� �����Ͽ� �����͸� ������ �� �ִ�. NOT NULL ���������� �ִ� �÷��� �ݵ�� ���� �־�� �Ѵ�.
INSERT INTO EMP(EMPNO, ENAME, DEPTNO) VALUES (102, '������', '1001');

SELECT *
 FROM DEPT;

-- ���̺� ����
-- ���� ������ ���̺��� ����� �� ��, INSERT�������� �����ϴ� �ڵ�
CREATE TABLE DEPT_TEST(
    DEPT_CODE INT NOT NULL PRIMARY KEY,
    DEPT_NAME VARCHAR(30)
);
INSERT INTO DEPT_TEST
    SELECT * FROM DEPT;
COMMIT;
SELECT * FROM DEPT_TEST;

-- ���̺��� ����鼭 �ٷ� �����ϴ� ��� - ����Ŭ ������ �ȵ�
--CREATE TABLE DEPT_COPY(
--    SELECT * 
--     FROM DEPT
--);

-- NOLOGGING �ɼ��� �α������� ����� �ּ�ȭ�ϸ鼭 �Է� �� ������ ����Ű�� ������� �ɼ�
-- NOLOGGING �ɼ��� BUFFER CACHE��� �޸� ������ �����ϰ� �ٷ� ����� �Ѵ�.
ALTER TABLE DEPT NOLOGGING;

-- UPDATE�� : ����� ���ڵ��� �÷��� ���� �����ϰ��� �� ��, ����Ѵ�.
-- UPDATE�� ���� ����(WHERE��)�� ������� ������ ��ü ���ڵ尡 �� ����ȴ�.(����)
SELECT * 
 FROM EMP; 

UPDATE EMP
      SET EMP_NAME = '�ѱ�'
WHERE EMPNO = 1000;

COMMIT;
ROLLBACK;

-- DELETE�� : ����� ���ڵ��� �÷��� ���� �����ϰ��� �� ��, ����Ѵ�.
-- DELETE�� ���� ����(WHERE��)�� ������� ������ ��ü ���ڵ尡 �� �����ȴ�.(����)
-- DELETE���� DML�����̶� TCL������ ����ȴ�.
SELECT * 
 FROM EMP; 
 
DELETE FROM EMP
WHERE EMPNO = 1001;

-- TRUNCATE�� : ��� �����͸� �����Ѵ�. ���̺� ������ ���ܵд�. 
-- TRUNCATE���� DDL�����̶� TCL(ROLLBACK)���� ������� �ʴ´�.
TRUNCATE TABLE EMP;







 