-- ���̺� �����(DDL����)
CREATE TABLE EMP(
    EMPNO INT NOT NULL PRIMARY KEY,
    EMP_NAME VARCHAR(30) NOT NULL,
    AGE INT NOT NULL,
    SAL INT NOT NULL,
    DEPT_CODE VARCHAR(5) NOT NULL
);

-- ���̺� ����(DDL����)
ALTER TABLE EMP MODIFY DEPT_CODE VARCHAR(5);
-- ���̺� ����(DDL����)
DROP TABLE EMP;

-- ���̺� ��ȸ(DML����)
-- AS�� ALLIAS�� ���ڷ� ��Ī�� ����Ͽ� �������� ���� ����� �ش�.
SELECT EMPNO AS "�����ȣ", EMP_NAME AS "�̸�", AGE AS "����", SAL AS "����", DEPT_CODE AS "�μ��ڵ�"
 FROM EMP;

-- ������ �Է�(DML����)
INSERT INTO EMP VALUES (1000, '�Ӻ���Ʈ', 20, 10000, '001');            -- ������ ���� �Է��ص� ������.
INSERT INTO EMP(EMPNO, EMP_NAME, AGE, SAL, DEPT_CODE) VALUES (1001, '������', 22, 21000, '002');       -- �������� ���
INSERT INTO EMP VALUES (1002, '��ö��', 32, 32000, '003');
-- ������ �����ϴµ� ����(WHERE)�� EMPNO�� 1000���� ���ؼ� ������.(DML����)
DELETE FROM EMP
WHERE EMPNO = 1000;
-- TCL�� �� ��ɾ�� �������� ������ġ(����, HDD, SSD ��)�� ������ ���� ���� ���·� ������ ��ɾ�.
-- DML����(INSERT, DELETE, UPDATE��)�� ����� �� ������ �ȴ�.
ROLLBACK;
-- TCL�� �� ��ɾ�� �������� ������ġ(����, HDD, SSD ��)�� ������.�� �� COMMIT�� �� ������ ROLLBACK�� ���� ������ �������.
COMMIT;

CREATE TABLE DEPT(
    DEPT_CODE INT NOT NULL PRIMARY KEY,
    DEPT_NAME VARCHAR(30)
);

DROP TABLE DEPT;
