SELECT cn.ContinentName AS Continent,
CountryNAme AS Country,
COUNT(ev.EventID) AS Number_Of_Events
FROM tblContinent AS cn
INNER JOIN tblCountry AS cy ON cn.ContinentID = cy.ContinentID
INNER JOIN tblEvent AS ev ON cy.CountryID = ev.CountryID
WHERE cn.ContinentName != 'Europe'
GROUP BY cn.ContinentName, cy.CountryName
HAVING Number_Of_Events > 5
ORDER BY cy.CountryName ASC;









