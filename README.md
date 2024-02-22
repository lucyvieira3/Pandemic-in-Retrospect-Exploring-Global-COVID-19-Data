# Pandemic in Retrospect Exploring Global COVID-19 Data
Pandemic in Retrospect: Exploring 2020-2021 Global COVID-19 Data - Analyzing Death Rates, Population Impact, and Peaks of Infection.

QUESTIONS TO ANSWER
1. What is the global death percentage between total deah count and total covid-19 cases? 
2. Which location had the highest percentage of infected citizens in correlation with their population?
3. Which Countries had the highest infection count? 

HYPOTHESIS
1. Globally the death percentage stayed at 2%.
   
   <img width="274" alt="Screenshot 2024-02-22 at 10 17 55 AM" src="https://github.com/lucyvieira3/Pandemic-in-Retrospect-Exploring-Global-COVID-19-Data/assets/153330654/4de50726-0ba7-4b37-b28e-31b1da85ea99">

3. Andorra, Czechia, Montenegro and San Marino were the countries with the highest % of infected population.
   
   <img width="515" alt="Screenshot 2024-02-22 at 10 21 35 AM" src="https://github.com/lucyvieira3/Pandemic-in-Retrospect-Exploring-Global-COVID-19-Data/assets/153330654/271b3475-1b7b-42bd-841b-500675e49107">
   
5. Russia, South Africa, Canada and North America are among the top countries with the highest infection rate.
   
   <img width="685" alt="Screenshot 2024-02-22 at 10 21 26 AM" src="https://github.com/lucyvieira3/Pandemic-in-Retrospect-Exploring-Global-COVID-19-Data/assets/153330654/8dfd7fe9-945f-4600-8996-df37882d3782">

APPROACH AND ANALYSIS
1. First I cleaned out the data and divided it into two worksheets as Total Deaths and Total Vaccinations to create my database. 
2. I calculated the total death percentage and highest infection count based on the data.
3. To calculate the Percentage of population infected I joined both of the total deaths and total vaccinations table with the new updated data.
4. Exported the data for visualization purposes on tableau as follow.

SUMMARY

<div class='tableauPlaceholder' id='viz1708615787570' style='position: relative'><noscript><a href='#'><img alt='Pandemic in Retrospect: Exploring 2020-2021 Global COVID-19 Data  ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Pa&#47;PandemicinRetrospectExploring2020-2021GlobalCOVID-19Data-AnalyzingDeathRatesPopulationImpactandPeaksofInfection&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='PandemicinRetrospectExploring2020-2021GlobalCOVID-19Data-AnalyzingDeathRatesPopulationImpactandPeaksofInfection&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Pa&#47;PandemicinRetrospectExploring2020-2021GlobalCOVID-19Data-AnalyzingDeathRatesPopulationImpactandPeaksofInfection&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1708615787570');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='977px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

SOFTWARE USED
Dbeaver 
SQL 
Tableau

Dataset Used
https://ourworldindata.org/covid-deaths

This Repository holds all of the code and queries from this project. 
