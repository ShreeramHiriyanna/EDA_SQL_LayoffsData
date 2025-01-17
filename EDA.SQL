-- STEP 1: REMOVING DUPLICATES

-- Creating a new table identical to the original
CREATE TABLE layoffs1 LIKE layoffs;

-- Inserting distinct records into the new table
INSERT INTO layoffs1
SELECT DISTINCT * FROM layoffs;

-- Identifying and removing duplicates
WITH duplicates AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_count
  FROM layoffs1
)
DELETE FROM layoffs1 WHERE row_count > 1;




-- STEP 2: STANDARDIZING DATA

-- Trimming whitespace from company names
UPDATE layoffs1 SET company = TRIM(company);

-- Standardizing country names by removing trailing periods
UPDATE layoffs1 SET country = TRIM(TRAILING '.' FROM country);

-- Converting date formats from text to SQL DATE type
UPDATE layoffs1 SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');
ALTER TABLE layoffs1 MODIFY COLUMN `date` DATE;




-- STEP 3: HANDLING NULL VALUES

-- Removing rows with missing or empty industry fields
DELETE FROM layoffs1 WHERE industry IS NULL OR industry = '';

-- Removing rows where both total_laid_off and percentage_laid_off are null
DELETE FROM layoffs1 WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL;




-- STEP 4: CREATING FINAL CLEANED TABLE

-- Creating a refined table to hold cleaned data
CREATE TABLE layoffs2 AS SELECT * FROM layoffs1;

-- Dropping intermediary columns
ALTER TABLE layoffs2 DROP COLUMN row_count;




-- Exploratory Data Analysis: General Statistics

-- Maximum number of layoffs in a single event
SELECT MAX(total_laid_off) FROM layoffs2;

-- Companies with 100% layoffs
SELECT * FROM layoffs2 WHERE percentage_laid_off = 1;
                



-- Company-Specific Insights

-- Total layoffs per company
SELECT company, SUM(total_laid_off) FROM layoffs2 GROUP BY company ORDER BY SUM(total_laid_off) DESC;

-- Largest layoff events for companies with 100% layoffs
SELECT * FROM layoffs2 WHERE percentage_laid_off = 1 ORDER BY total_laid_off DESC;
                



-- Temporal Analysis

-- Start and end dates of layoffs
SELECT MIN(`date`) AS Start_date, MAX(`date`) AS End_date FROM layoffs2;

-- Layoffs trends over the years
SELECT YEAR(`date`), SUM(total_laid_off) FROM layoffs2 GROUP BY YEAR(`date`) ORDER BY YEAR(`date`) DESC;

-- Layoffs trends over the months
SELECT SUBSTRING(`date`, 1, 7) AS `Month`, SUM(total_laid_off) FROM layoffs2 GROUP BY `Month` ORDER BY `Month` ASC;
                



-- Industry and Country Analysis

-- Total layoffs by industry
SELECT industry, SUM(total_laid_off) FROM layoffs2 GROUP BY industry ORDER BY SUM(total_laid_off) DESC;

-- Total layoffs by country
SELECT country, SUM(total_laid_off) FROM layoffs2 GROUP BY country ORDER BY SUM(total_laid_off) DESC;
                



-- Rolling Summation

-- Monthly rolling sum of layoffs
SELECT `date`, total_laid_off, 
SUM(total_laid_off) OVER (ORDER BY `date` ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS rolling_sum
FROM layoffs2
ORDER BY `date`;