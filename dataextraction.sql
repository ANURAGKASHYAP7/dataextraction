 create database dataextraction;
 use dataextraction;
 /*Q1. Describe different types of data sources used in ETL with suitable examples.
Answer: Data sources are places from which data is collected during ETL.
- Flat files: CSV and text files.
- Spreadsheets: Excel files.
- Databases: MySQL and PostgreSQL.
- APIs: Online services that provide data.
- Cloud storage: Amazon S3.
Q2. What is data extraction? Explain its role in the ETL pipeline.
Answer: Data extraction is the process of collecting data from different sources.

It is the first step of ETL. The three steps are:
- Extract: Collect data.
- Transform: Clean and process data.
- Load: Store processed data in a destination.
Q3. Explain the difference between CSV and Excel in terms of extraction and ETL usage.
Answer:
CSV	Excel
Stores data in plain text.	Stores data in spreadsheet workbooks.
Uses the .csv extension.	Uses .xlsx or .xls.
Usually contains one flat table.	Can contain multiple worksheets.
Does not preserve spreadsheet formatting or formulas.	Supports formatting and formulas.
Simple to extract and process.	May require selecting a specific worksheet or range.

Q4. Explain the steps involved in extracting data from a relational database.
Answer: The main steps are:
1. Connect to the database.
2. Identify the required tables and columns.
3. Write an SQL query using SELECT and, if needed, WHERE.
4. Execute the query.
5. Validate the extracted data.
6. Transfer the data to the transformation stage.
Example:
SELECT Name, City
FROM Customers
WHERE City = 'Jaipur';


Q5. Explain three common challenges faced during data extraction.
Answer:
1. Poor Data Quality: Missing values, duplicate records, and incorrect data. Solution: Validate and clean the data.
2. Large Data Volume: Large files can consume significant memory and time. Solution: Process data in smaller chunks.
3. Connectivity and Access Issues: Network failures, incorrect credentials, or insufficient permissions. Solution: Check connections and access permissions.
Q6. What are APIs? Explain how APIs help in real-time data extraction.
Answer: API stands for Application Programming Interface. It allows different software applications to communicate and exchange data.

APIs help in data extraction by:
- Retrieving data from external services.
- Automating data collection.
- Supporting frequent data updates.
- Integrating data from different applications.
Example: A weather API provides weather information to an application. The actual update speed depends on the API and its service.
Q7. Why are databases preferred for enterprise-level data extraction?
Answer: Databases are preferred because they:
1. Handle large amounts of data.
2. Retrieve specific data efficiently using SQL.
3. Provide security through access controls.
4. Maintain data integrity and consistency.
5. Integrate with ETL tools.
Example: An e-commerce company extracts customer and order data from a database to prepare sales reports.
Q8. What steps should an ETL developer take when extracting data from large CSV files (1GB+)?
Answer: An ETL developer should:
1. Inspect the file structure and data types.
2. Read data in smaller chunks.
3. Load only required columns.
4. Validate data and handle errors.
5. Process and store each chunk incrementally.
6. Monitor progress and verify record counts.
Example using Python pandas:
import pandas as pdfor chunk in pd.read_csv("sales.csv", chunksize=10000):    print(chunk.shape)



Here, chunksize=10000 reads up to 10,000 rows per chunk, helping reduce memory usage.

Quick revision — remember these key points
Concept	Remember
ETL	Extract → Transform → Load
Data extraction	Collecting data from sources
CSV vs Excel	Plain text vs spreadsheet workbook
Database extraction	Connect → Query → Validate
Extraction challenges	Data quality, volume, connectivity
API	Application Programming Interface
Enterprise databases	Scale, security, efficient retrieval
Large CSV files	Chunks, required columns, validation*/