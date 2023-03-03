# sql-challenge

## Description

This project involved taking CSV files from a fictional company containing employee data, importing the data into a SQL database and quering the data to answer certain questions.

## Step 1: Data Modelling

The first task was to create an Entity Relationship Diagram to model the relationship between the various tables that would be created from the CSV files using QuickDBD. This was done by inspecting the data in the CSV files and determining which files had overlapping data, whether matching data from one file to another had a one to one, one to many or many to many relationship. With this, a relationship between the tables to be created from the respective files could be established, foreign keys and primary keys determined and the final diagram(ERD) produced:

![ERD](https://user-images.githubusercontent.com/119974799/222341362-7a19c781-f192-4a23-ac8d-40108313dd57.png)

## Step 2: Data Engineering

This task involved creating a database on PostgreSQL adding tables to the database and importing the data from the CSV files into the tables. Creation of the tables was done by writing and running a SQL script file(table_schemata) that would add the necessary columns to the tables and assign them the correct data types to store the imported data and assign primary and foreign keys for each table where necessary. Once the tables were created, the data was imported from the CSV files in the same order the tables were created to avoid errors.

![Screenshot (66)](https://user-images.githubusercontent.com/119974799/222620227-dd764b45-490b-4da9-9d28-de8ecb2e4ba4.png)

## Step 3: Data Analysis

With the data finally prepared and imported into the database, this final task involved writing various queries to answer questions about the data, this can be viewed in the queries script file.

![Screenshot (67)](https://user-images.githubusercontent.com/119974799/222620293-47e9d5d8-fc94-40ab-82ee-62b623fb6c4a.png)
