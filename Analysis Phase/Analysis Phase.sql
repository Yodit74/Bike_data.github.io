--- Analysis Phase---
--- Rider by member and casual users--

SELECT
COUNT(ride_id) As Total_number,
member_casual
FROM Bike_share2022
GROUP BY
member_casual;

-- Rideble_type by member and casual user--

SELECT
COUNT (ride_id) As Total_number,
rideable_type,
member_casual
FROM Bike_share2022
GROUP BY rideable_type,
member_casual
ORDER BY
COUNT(ride_id)DESC;


------Mostly start station by member and casual users---

SELECT TOP 5
COUNT(ride_id) As number_of_riders,
start_station_name,
member_casual
FROM Bike_share2022
GROUP BY start_station_name,
member_casual
ORDER BY
COUNT(ride_id)DESC;

---- Mostly used by end station of member user and casual users--


SELECT 
COUNT(ride_id) As number_of_riders,
end_station_name,
member_casual
FROM dbo.Bike_share2022
GROUP BY end_station_name,
member_casual
ORDER BY
COUNT(ride_id)DESC;

-----start time analysis by member and casual users
----start time Month analysis
SELECT
COUNT (ride_id) As no_of_users,
DATEPART(MONTH,started_at) As started_Month,
---DATEPART(weekday,started_at)AS started_DAY
---DATEPART(HOUR,started_at)AS started_HOUR
member_casual
FROM dbo.Bike_share2022
GROUP BY
member_casual,
DATEPART(MONTH,started_at)
ORDER BY COUNT(ride_id)DESC;

----start time day analysis
SELECT
COUNT (ride_id) As no_of_users,
---DATEPART(MONTH,started_at) As started_Month,
DATEPART(weekday,started_at)AS started_DAY,
---DATEPART(HOUR,started_at)AS started_HOUR
member_casual
FROM dbo.Bike_share2022
GROUP BY
member_casual,
DATEPART(weekday,started_at)
ORDER BY COUNT(ride_id)DESC;

---END time analysis -----END time analysis by member and casual users
----END time Month analysis
SELECT
COUNT (ride_id) As no_of_users,
DATEPART(MONTH,ended_at) As End_Month,
---DATEPART(weekday, ended_at)AS Ended_DAY
---DATEPART(HOUR,ended_at)AS Ended_HOUR
member_casual
FROM dbo.Bike_share2022
GROUP BY
member_casual,
DATEPART(MONTH,ended_at)
ORDER BY COUNT(ride_id)DESC;

