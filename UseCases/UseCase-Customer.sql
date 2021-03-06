/* Customer */

/*
a. Customer C003 checks his all transaction history in 2015.
*/

SELECT AC.ACC_NO AS 'ACCOUNT NUMBER',AT.ACC_TYPE_NAME AS 'ACCOUNT TYPE',AC.TRAN_TIMESTAMP AS 'TRANSACTION TIME',
	AC.TRAN_DESC AS 'TRANSACTION DESCRIPTION' ,AC.TRAN_AMT AS 'TRANSACTION AMOUNT',A.ACC_BALANCE AS 'CURRENT BALANCE'
FROM ACC_STATEMENT AC, ACCOUNT A,ACC_TYPE AT
WHERE AC.ACC_NO=A.ACC_NO AND 
		A.CUSTOMER_ID='C003'AND AT.ACC_TYPE_ID=A.ACC_TYPE_ID AND 
		AC.TRAN_TIMESTAMP< '2016-01-0100:00:00.000'

/* 
b. Customer C004 request a loan quote online. 
*/

INSERT INTO LOAN_REQ (LOAN_REQ_ID,CUSTOMER_ID,LOAN_TYPE_ID,LOAN_AMT,LOAN_TERM)
VALUES ('LQ016','C004','LT002','45000','5')

SELECT *
FROM LOAN_REQ

/*
c. Customer C004 check his loans and status.
*/

SELECT C.CUSTOMER_NAME AS 'NAME', C.CUSTOMER_ID AS 'CUSTOMER ID',L.LOAN_ID AS 'LOAN ID',
		LP.LOAN_TYPE_NAME AS'LOAN TYPE',L.LOAN_STATUS AS 'LOAN STATUS',
		L.STATUS_TIMESTAMP AS 'STATUS TIMESTAMP',L.LOAN_AMT AS 'LOAN AMOUNT',
		L.LOAN_AMT_PAID AS' LOAN PAID',L.NEXT_DUE_DATE AS 'NEXT DUE DATE'
FROM LOAN L, CUSTOMER C,LOAN_PRODUCTS LP
WHERE L.CUSTOMER_ID=C.CUSTOMER_ID AND L.LOAN_TYPE_ID=LP.LOAN_TYPE_ID
AND C.CUSTOMER_ID='C004'

/*
d. Customer C001 update his home address to ‘1050 Benton St, Santa Clara, CA.
*/
UPDATE C SET C.CUSTOMER_ADDRESS = '1050 Benton St, Santa Clara, CA'
FROM CUSTOMER C
WHERE C.CUSTOMER_ID='C001'
SELECT C.CUSTOMER_ID, C.CUSTOMER_ADDRESS
FROM CUSTOMER C
WHERE C.CUSTOMER_ID='C001'
