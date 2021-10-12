SELECT location, date total_cases, new_cases, total_deaths
FROM CovidDeath
ORDER BY 1,2

--Loking at cases vs deaths
--shows liklihood of dying from covid in the U.S.
SELECT location, date total_cases, (total_deaths/total_cases)*100 AS DeathPercentage
FROM CovidDeath
WHERE location LIKE '%states%'
ORDER BY 1,2

--Highest death count per population

SELECT location, MAX(total_deaths) as total_death_count
FROM CovidDeath
GROUP BY location
ORDER BY total_death_count DESC

--Death Count per continent
SELECT continent, MAX(total_deaths) as total_death_count
FROM CovidDeath
WHERE continent is not NULL
GROUP BY continent
ORDER BY total_death_count DESC

--Death percentage per continent

SELECT continent, date total_cases, (total_deaths/total_cases)*100 AS DeathPercentage
FROM CovidDeath
ORDER BY DeathPercentage DESC

