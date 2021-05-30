-- Todos los registros
SELECT *
FROM esophageal_clean ec;

-- Conteo de registros
SELECT count(*)
FROM esophageal_clean ec;

-- ¿Cuál es la edad promedio por región?
SELECT region, round(avg(age),2) avg_age
FROM esophageal_clean ec
GROUP BY region;

-- ¿Cuál es la edad promedio por región y genero?
SELECT region, sex, round(avg(age),2) avg_age
FROM esophageal_clean ec 
GROUP BY region, sex
ORDER BY region;

-- Cubo.
SELECT region, sex, round(avg(age),2) avg_age
FROM esophageal_clean ec 
GROUP BY CUBE (region, sex)
ORDER BY region;

-- Cubo + grouping
SELECT region, sex, grouping(region) gr, grouping(sex) gs, round(avg(age),2) avg_age
FROM esophageal_clean ec 
GROUP BY CUBE (region, sex)
ORDER BY region;

-- Rollup
SELECT region, sex, grouping(region) gr, grouping(sex) gs, round(avg(age),2) avg_age
FROM esophageal_clean ec 
GROUP BY ROLLUP (region, sex)
ORDER BY region;

-- Over
SELECT DISTINCT region, sex, age, ROUND(avg(age) OVER (PARTITION BY sex), 2) avg_age
FROM esophageal_clean ec;
