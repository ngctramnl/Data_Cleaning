USE [DS Training]
GO
/***Inspect the fuel_type column ***/
SELECT DISTINCT fuel_type                ---2 distinct fuel types confirmed---
  FROM [automobile_data] 

/***Inspect the length column ***/

SELECT MIN(length) as min_length,        ---Align with the data description---
       MAX(length) as max_length
FROM [automobile_data] 

/***Fill in missing data ***/

SELECT * from [automobile_data]          ---2 missing values returned---
WHERE num_of_doors IS NULL


UPDATE [automobile_data] 
SET num_of_doors='four'                  ---3 rows affected---
WHERE make = 'dodge' AND
      fuel_type = 'gas' AND
	  body_style = 'sedan'

UPDATE [automobile_data] 
SET num_of_doors='four'                  ---2 rows affected---
WHERE make = 'mazda' AND
      fuel_type = 'diesel' AND
	  body_style = 'sedan'

/***Identify potential errrors ***/
SELECT DISTINCT num_of_cylinders         ---1 misspelled value returned
FROM [automobile_data] 

UPDATE [automobile_data]                 ---1 row affected---
SET num_of_cylinders='two'
WHERE num_of_cylinders='tow'

SELECT MIN(compression_ratio) as min_compression_ratio,        ---Max value should be 23,not 70---
       MAX(compression_ratio) as max_compression_ratio
FROM  [automobile_data] 
WHERE compression_ratio <> 70

SELECT COUNT(*) num_rows_to_delete                             ---1 row of the errorenous 70 value returned---
FROM  [automobile_data] 
WHERE compression_ratio = 70

DELETE [automobile_data]                                       ---1 row excluded---
WHERE compression_ratio = 70

/***Ensure consistency ***/
SELECT DISTINCT drive_wheels                                   ---3 unique values returned---
FROM [automobile_data] 


SELECT * FROM [automobile_data] 