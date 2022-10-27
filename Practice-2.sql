-- ������(�θ�) ���̺� �����
CREATE TABLE DEPT(
    DEPTNO VARCHAR2(4) PRIMARY KEY,
    DEPTNAME VARCHAR2(20)    
);

INSERT INTO DEPT VALUES('1000', '�λ���');
INSERT INTO DEPT VALUES('1001', '�ѹ���');

SELECT *
  FROM DEPT;
COMMIT;
-- �����̺�(�ڽ�) ���̺� �����
CREATE TABLE EMP(
    EMPNO NUMBER(10),
    ENAME VARCHAR2(20) NOT NULL,
    SAL NUMBER(10, 2) DEFAULT 0,        -- DEFAULT�������� �Է��� �� ����ΰ� �Ǹ� �⺻������ 0�� ����.
    DEPTNO VARCHAR2(4) NOT NULL,
    CREATEDATE DATE DEFAULT SYSDATE,   -- ���� PC�� ��¥, �ð�(�ú���)�� �⺻������ ����ȴ�.
    CONSTRAINT EMPPK PRIMARY KEY(EMPNO),  -- EMP���̺��� EMPNO�÷��� EMPPK��� �̸����� �⺻Ű�� ������
    -- �ܷ�Ű�� �����ϴµ� DEPTFK�̸����� �ϰ� DEPT���̺��� DEPTNO�� �����ϰ� ����� ���������̴�.
    CONSTRAINT DEPTFK FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)  
    ON DELETE CASCADE    -- �ɼ��� �ڽ��� �����ϰ� �ִ� ���̺�(DEPT)�� �����Ͱ� �����Ǹ� EMP���̺� ������ �޾Ƽ� �ش�Ǵ� ���ڵ�
    -- �� �����Ѵٸ� ���� ������ �̷������. '���� ���Ἲ'�� ��ų �� �ִ�. ���� ���Ἲ�̶� ������ ���̺�(DEPT)���� �ش� �μ���ȣ�� ���µ�
    -- �����̺� ���̺� �ش� �μ���ȣ�� �ִ� ��츦 ���� ���Ἲ ����� ������ �ִ�.
);
INSERT INTO EMP VALUES(100, '�Ӻ���Ʈ', 1000, '1000', SYSDATE);
INSERT INTO EMP VALUES(101, '��������', 2000, '1001', SYSDATE);
-- �θ����̺��� �μ��ڵ尡 �����Ƿ� ���Ἲ �������� ����
INSERT INTO EMP VALUES(102, '������', 3000, '1002', SYSDATE);
ROLLBACK;
SELECT *
  FROM EMP;
-- DESC(DECRIBE)��ɾ�� �����ϰ� ���̺� ������ Ȯ���ϴ� ��ɾ��̴�.
DESC EMP;
DESC DEPT;
-- ������ ���̺��� DEPT�� EMP���̺��� �����ϰ� �����Ƿ� ������ ���� �ʴ´�.�ܷ� Ű�� ���� �����Ǵ� ����/�⺻ Ű�� ���̺� �ִ�.
DROP TABLE DEPT;

-- ������ ���̺��� DEPT, �����̺� ���̺��� EMP���̺�
-- ������ ���̺��� DEPT�� �����̺� ���̺�� ���� �ܷ�Ű ���������� ������ ���� ����, �׻� �����̺� ���̺��� ���� �����ϰ�
-- �� �� ������ ���̺��� DEPT���̺��� �����ؾ� �Ѵ�.
DROP TABLE EMP;

SELECT * 
 FROM DEPT;

SELECT *
 FROM EMP;
 
-- ������ ���̺��� ���ڵ� �߿��� 1000���� �λ����� �����ϴ� �ϴ� �ڵ�
DELETE FROM DEPT
WHERE DEPTNO = '1001';
COMMIT;

-- ���̺�� ���� ALTER TABLE ~ RENAME TO������ ����Ѵ�.
ALTER TABLE EMP
    RENAME TO NEW_EMP;

ALTER TABLE NEW_EMP
    RENAME TO EMP;

-- ���̺� �÷� �߰� ADD
ALTER TABLE EMP
    ADD (AGE NUMBER(2) DEFAULT 1);

-- ���̺��� �÷� ����
ALTER TABLE EMP
    MODIFY (ENAME VARCHAR2(50));

-- ������ Ÿ���� ������ ���� ������ ���̺� �����Ͱ� �����ϸ� ������ �߻��ϹǷ� ����ܿ��� �� �����Ͽ� �����Ͽ��� �Ѵ�.
ALTER TABLE EMP
    MODIFY (SAL VARCHAR2(10) NOT NULL);
    
-- �÷� ����
ALTER TABLE EMP
    DROP COLUMN AGE;

-- �÷��� ����
ALTER TABLE EMP
    RENAME COLUMN ENAME TO NEW_ENAME;

--���̺� ���� ���� ����
DROP TABLE EMP CASCADE CONSTRAINT;

DROP TABLE EMP;


