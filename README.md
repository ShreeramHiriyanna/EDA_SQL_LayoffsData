# Data Cleaning and Exploratory Data Analysis: [Layoffs Dataset](https://github.com/ShreeramHiriyanna/EDA_SQL_LayoffsData/blob/main/layoffs.csv)

## Transforming Raw Data into Actionable Insights using SQL

### Introduction

This project showcases the end-to-end process of preparing a raw dataset for analysis through data cleaning and exploratory data analysis (EDA). By addressing issues such as duplicates, inconsistent formats, null values, and data integrity, the dataset was transformed into a clean and structured format ready for insightful analysis

### Project Overview

**Dataset:** Layoffs dataset, containing records from various companies with details such as dates, industry, locations, and layoff numbers
**Objective:**
- Clean and structure the dataset to remove inconsistencies and errors
- Extract meaningful insights using SQL for exploratory data analysis

### Project Workflow

[**Data Cleaning**](https://github.com/ShreeramHiriyanna/EDA_SQL_LayoffsData/blob/main/EDA.SQL)
- Removing Duplicates: Identified duplicates using the ROW_NUMBER() function and removed redundant entries
- Standardizing Data: Trimmed whitespaces, standardized country names, and converted date formats
- Handling Null Values: Removed rows with null or empty critical fields
- Creating Cleaned Dataset: Consolidated cleaned data into a refined table for analysis

[**Exploratory Data Analysis**](https://github.com/ShreeramHiriyanna/EDA_SQL_LayoffsData/blob/main/EDA.SQL)
- General Statistics: Maximum layoffs, companies with 100% layoffs
- Company-Specific Insights: Total layoffs per company and largest layoff events
- Temporal Trends: Analysis by year and month
- Industry and Country Analysis: Layoffs by industry and country
- Rolling Summation: Visualizing trends using rolling sums over time

 **Key Insights**
- Largest Layoff Event: Maximum number of layoffs in a single event
- 100% Layoffs: Companies that laid off their entire workforce
- Industry Trends: Industries with the highest layoffs
- Country Insights: Countries most impacted by layoffs
- Temporal Trends: Patterns in layoffs across years and months

### Skills and Tools

**Technical Skills:**
  - SQL: Advanced querying, data cleaning, and analysis
  - Data Analysis: Exploratory analysis to derive trends and insights
  - Data Integrity Checks: Ensuring cleaned data remains consistent and accurate
  - Problem-Solving: Addressing and resolving common data issues (duplicates, null values, formatting)

**Tools Used:**
- MySQL: For database creation, manipulation, and querying
- Version Control: GitHub for project tracking and sharing

## Conclusion

This project demonstrates the essential steps of data cleaning and exploratory analysis using SQL. By addressing common data challenges and deriving actionable insights, this project reflects the importance of preparing data for informed decision-making
