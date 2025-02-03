-- Exploratory Data Analysis

SELECT *
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

SELECT company, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY company
ORDER BY total_laid_off_sum DESC;

SELECT MIN(`date`) earliest_date, MAX(`date`) latest_date
FROM layoffs_staging2;

SELECT industry, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY industry
ORDER BY total_laid_off_sum DESC;

SELECT country, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY country
ORDER BY total_laid_off_sum DESC;

SELECT `date`, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY `date`
ORDER BY total_laid_off_sum DESC;

SELECT YEAR(`date`), SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY total_laid_off_sum DESC;

SELECT stage, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
GROUP BY stage
ORDER BY total_laid_off_sum DESC;

SELECT SUBSTRING(`date`, 1, 7) `month`, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
WHERE substring(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC;

WITH Rolling_total AS
(SELECT SUBSTRING(`date`, 1, 7) `month`, SUM(total_laid_off) total_laid_off_sum
FROM layoffs_staging2
WHERE substring(`date`, 1, 7) IS NOT NULL
GROUP BY `month`
ORDER BY 1 ASC
)
SELECT `month`,total_laid_off_sum, SUM(total_laid_off_sum) OVER(ORDER BY `month`) running_total
FROM Rolling_total;






























