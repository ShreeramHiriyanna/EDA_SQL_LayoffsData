# Data Cleaning and Exploratory Data Analysis: Layoffs Dataset

## Transforming Raw Data into Actionable Insights using SQL

### Introduction

This project showcases the end-to-end process of preparing a raw dataset for analysis through data cleaning and exploratory data analysis (EDA). By addressing issues such as duplicates, inconsistent formats, null values, and data integrity, the dataset was transformed into a clean and structured format ready for insightful analysis

### Project Overview

**Dataset:** Layoffs dataset, containing records from various companies with details such as dates, industry, locations, and layoff numbers
**Objective:**
	1.	Clean and structure the dataset to remove inconsistencies and errors
	2.	Extract meaningful insights using SQL for exploratory data analysis

### Project Workflow

**Data Cleaning**
	1.	Removing Duplicates: Identified duplicates using the ROW_NUMBER() function and removed redundant entries
	2.	Standardizing Data: Trimmed whitespaces, standardized country names, and converted date formats
	3.	Handling Null Values: Removed rows with null or empty critical fields
	4.	Creating Cleaned Dataset: Consolidated cleaned data into a refined table for analysis

**Exploratory Data Analysis**
	1.	General Statistics: Maximum layoffs, companies with 100% layoffs
	2.	Company-Specific Insights: Total layoffs per company and largest layoff events
	3.	Temporal Trends: Analysis by year and month
	4.	Industry and Country Analysis: Layoffs by industry and country
	5.	Rolling Summation: Visualizing trends using rolling sums over time

 **Key Insights**
	1.	Largest Layoff Event: Maximum number of layoffs in a single event
	2.	100% Layoffs: Companies that laid off their entire workforce
	3.	Industry Trends: Industries with the highest layoffs
	4.	Country Insights: Countries most impacted by layoffs
	5.	Temporal Trends: Patterns in layoffs across years and months

### Skills and Tools

**Technical Skills:**
  - SQL: Advanced querying, data cleaning, and analysis
  - Data Analysis: Exploratory analysis to derive trends and insights
  - Data Integrity Checks: Ensuring cleaned data remains consistent and accurate
  - Problem-Solving: Addressing and resolving common data issues (duplicates, null values, formatting)

**Tools Used:**
	- MySQL: For database creation, manipulation, and querying
 Version Control: GitHub for project tracking and sharing

## Conclusion

This project demonstrates the essential steps of data cleaning and exploratory analysis using SQL. By addressing common data challenges and deriving actionable insights, this project reflects the importance of preparing data for informed decision-making
