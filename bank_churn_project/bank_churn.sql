/* Data from https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn/data */

/* Generate queries to check for null values */
SELECT
    'SELECT ''' + COLUMN_NAME + ''' AS ColumnName, ' +
    'COUNT(*) AS NullCount FROM ' +
    QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME) +
    ' WHERE ' + QUOTENAME(COLUMN_NAME) + ' IS NULL;'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'churn';

/* Run generated queries */
SELECT 'RowNumber' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [RowNumber] IS NULL;
SELECT 'CustomerId' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [CustomerId] IS NULL;
SELECT 'Surname' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Surname] IS NULL;
SELECT 'CreditScore' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [CreditScore] IS NULL;
SELECT 'Geography' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Geography] IS NULL;
SELECT 'Gender' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Gender] IS NULL;
SELECT 'Age' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Age] IS NULL;
SELECT 'Tenure' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Tenure] IS NULL;
SELECT 'Balance' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Balance] IS NULL;
SELECT 'NumOfProducts' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [NumOfProducts] IS NULL;
SELECT 'HasCrCard' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [HasCrCard] IS NULL;
SELECT 'IsActiveMember' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [IsActiveMember] IS NULL;
SELECT 'EstimatedSalary' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [EstimatedSalary] IS NULL;
SELECT 'Exited' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Exited] IS NULL;
SELECT 'Complain' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Complain] IS NULL;
SELECT 'Satisfaction_Score' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Satisfaction_Score] IS NULL;
SELECT 'Card_Type' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Card_Type] IS NULL;
SELECT 'Point_Earned' AS ColumnName, COUNT(*) AS NullCount FROM [dbo].[churn] WHERE [Point_Earned] IS NULL;

/* Check counts and percentages for columns of interest */
SELECT 
	Gender, 
	COUNT(Gender) AS gender_count,
	/* Multiply by 100.0 to convert to float and find percentage */
	COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM churn) AS gender_percentage 
FROM churn
GROUP BY Gender;

SELECT 
	Card_Type, 
	COUNT(Card_Type) AS card_type_count,
	COUNT(Card_Type) * 100.0 / (SELECT COUNT(*) FROM churn) AS card_type_percentage 
FROM churn
GROUP BY Card_Type;

SELECT 
	Exited, 
	COUNT(Exited) AS exit_count,
	COUNT(Exited) * 100.0 / (SELECT COUNT(*) FROM churn) AS exit_percentage 
FROM churn
GROUP BY Exited;

SELECT 
	Geography, 
	COUNT(Geography) AS geo_count,
	COUNT(Geography) * 100.0 / (SELECT COUNT(*) FROM churn) AS geo_percentage 
FROM churn
GROUP BY Geography
ORDER BY geo_percentage DESC;

/* Remove unnecessary row */
ALTER TABLE churn
DROP COLUMN RowNumber;