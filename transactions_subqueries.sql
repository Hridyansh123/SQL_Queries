Set-Content -Path .\transactions_subqueries.sql -Value @"
BEGIN TRANSACTION;

-- Deduct $500 from Account 1
UPDATE Accounts
SET Balance = Balance - 500
WHERE AccountID = 1;

-- Add $500 to Account 2
UPDATE Accounts
SET Balance = Balance + 500
WHERE AccountID = 2;

COMMIT;
"@
