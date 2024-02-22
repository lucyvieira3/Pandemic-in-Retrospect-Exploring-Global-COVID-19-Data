/*
Covid 19 Data Exploration 
Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions
*/


SELECT *
FROM CovidDeaths cd  
WHERE continent is not NULL 
order by 3,4


SELECT *
FROM CovidVaccinations cv
order by 3,4

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM CovidDeaths cd
order by 1,2


SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Deathpercentage
FROM  CovidDeaths cd 
Where location like '%states%'
order by 1,2

SELECT location, date, population, total_cases, (total_cases/population)*100 as Deathpercentage
FROM  CovidDeaths cd
Where location like '%states%'
order by 1,2

SELECT location, population, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/population))*100 as Percentpopulationinfected
FROM  CovidDeaths cd
-- Where location like '%states%'
Group by location, population
order by PercentPopulationInfected desc 


SELECT location, MAX(total_deaths) as TotalDeathCount
FROM  CovidDeaths cd
-- Where location like '%states%'
Where continent is not NULL 
Group by location
order by TotalDeathCount desc


SELECT continent  , MAX(total_deaths) as TotalDeathCount
FROM CovidDeaths cd 
-- Where location like '%states%'
Where continent is not NULL 
Group by continent
order by TotalDeathCount desc

SELECT date, SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as Deathpercentage
FROM  CovidDeaths cd
-- Where location like '%states%'
Where continent is not null 
Group by date
order by 1,2

Select * 
FROM CovidDeaths dea
Join CovidVaccinations vac 
On dea.location = vac.location 
and dea.date = vac.date


Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations, SUM(vac.new_vaccinations) OVER (PARTITION by dea.location ORDER BY dea.location, dea.date) as RollingPeopleVaccinated
FROM CovidDeaths dea
Join CovidVaccinations vac 
  On dea.location = vac.location 
  and dea.date = vac.date
Where dea.continent is not null 
Order by 2,3

With 
PopvsVac AS (
Select 
dea.continent, 
dea.location, 
dea.date, 
dea.population, 
vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From CovidDeaths dea
Join CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
)
Select *, (RollingPeopleVaccinated/Population)*100
From PopvsVac

DROP Table if exists PercentagePopulationVaccinated
Create Table PercentagePopulationVaccinated
(
Continent text,
Location text,
Date text,
Population int,
New_vaccinations text,
RollingPeopleVaccinated int
)

INSERT INTO PercentagePopulationVaccinated 
Select 
dea.continent, 
dea.location, 
dea.date, 
dea.population, 
vac.new_vaccinations,
SUM(vac.new_vaccinations) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From CovidDeaths dea
Join CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date


Select *, (RollingPeopleVaccinated/Population)*100
From PercentagePopulationVaccinated
	
Select * 
FROM PercentagePopulationVaccinated ppv 