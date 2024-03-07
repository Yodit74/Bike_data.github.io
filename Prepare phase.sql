--- prepare Phase
--- ONLY SELECT 7 COULUM FOR ANALYSIS PURPUSE AND USING UNION ALL FUNCTION JOINING
----TABLES WHICH INCLUDE THE 12 MONTHS.

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202201-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202202-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202203-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202204-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202205-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202206-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202207-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202208-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202209-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202210-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202211-divvy-tripdata]
UNION ALL

SELECT 
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
from [202212-divvy-tripdata]
