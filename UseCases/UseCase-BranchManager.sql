/* Branch Manager */

/*
a. Check all the premium customer of branch CA001.
*/

SELECT
C.CUSTOMER_ID,C.CUSTOMER_NAME,C.TIER_ID,CT.TIER_DESC,C.BRANCH_ID
FROM CUSTOMER C, CUSTOMER_TYPE CT
WHERE C.BRANCH_ID='CA001' AND C.TIER_ID=CT.TIER_ID AND CT.TIER_DESC='PREMIUM_CUSTOMER'
/*
b. Check loan status of customer L006 and update loan status to Approved.
*/

UPDATE L SET L.LOAN_STATUS ='APPROVED'
FROM LOAN L
WHERE L.LOAN_ID='L006'

SELECT *
FROM LOAN L
WHERE L.LOAN_ID='L006'
/*
c. Search employee E001’s quota number.
*/

SELECT Q.QUOTA_ID,Q.QUOTA_VALUE,Q.QUOTA_DESC,P.PERFORMANCE_ID,P.EMP_ID
FROM QUOTA Q, PERFORMANCE P
WHERE Q.QUOTA_ID=P.QUOTA_ID AND P.EMP_ID='E001'
