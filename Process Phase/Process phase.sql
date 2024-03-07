----PROCESS phase 

---SINCE THE DATA IS TO LARGE TO LOADE USE BULK INSERT TO UPLOAD 5667717 RECORDS FROM 
---  CSV FILE. The following query used to upload the data.

BULK INSERT [Final final]
FROM  'C:\Users\tesyo\OneDrive\Desktop\Cyclist Bike 2022\Prepare phase\Bike_share2022.csv' 
WITH   (FORMAT = 'CSV'
      ,FIELDTERMINATOR  = ','
      ,ROWTERMINATOR ='0X0a');

 -- Cleaning by removing all null value from all column

 SELECT *
 FROM Bike_share2022
 WHERE
   ride_id Is NUll
OR rideable_type Is NUll
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR end_station_name IS NULL
OR member_casual IS NULL;


---- Remove duplicate
SELECT *,
COUNT (*)AS duplicatecount
FROM Bike_share2022
GROUP BY 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
HAVING COUNT(*)>1;

