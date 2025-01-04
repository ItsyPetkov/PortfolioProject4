IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'server_config')
BEGIN
	EXEC('
		CREATE PROCEDURE server_config
		AS
	
		EXEC sp_configure ''show advanced options'', 1;
		RECONFIGURE;
		EXEC sp_configure;

		EXEC sp_configure ''ad hoc distributed queries'', 1;
		RECONFIGURE;
		EXEC sp_configure;
	');
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'database_config')
BEGIN
	EXEC('
		CREATE PROCEDURE database_config
		AS

		EXEC master.dbo.sp_MSset_oledb_prop N''Microsoft.ACE.OLEDB.12.0'', N''AllowInProcess'', 1 

		EXEC master.dbo.sp_MSset_oledb_prop N''Microsoft.ACE.OLEDB.12.0'', N''DynamicParameters'', 1 
	');
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'populate_database')
BEGIN
	EXEC('
		CREATE PROCEDURE populate_database
		AS

		IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ''countries'')
		BEGIN
		CREATE TABLE countries(
			country VARCHAR(255),
			code VARCHAR(255),
			continent VARCHAR(255),
			region VARCHAR(255)
		)

		BULK INSERT countries FROM ''C:\Users\Hristo\Downloads\archive(2)\Countries.csv''
			WITH (
				FIRSTROW = 2,
				FIELDTERMINATOR = '','',
				ROWTERMINATOR = ''\n''
			);
		END;

		IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ''ba_reviews'')
		BEGIN
		CREATE TABLE ba_reviews(
			header VARCHAR(MAX),
			author VARCHAR(MAX),
			date VARCHAR(MAX),
			place VARCHAR(MAX),
			content VARCHAR(MAX),
			aircraft VARCHAR(MAX),
			traveller_type VARCHAR(MAX),
			seat_type VARCHAR(MAX),
			route VARCHAR(MAX),
			date_flown VARCHAR(MAX),
			recommended VARCHAR(MAX),
			trip_verified VARCHAR(MAX),
			rating VARCHAR(MAX),
			seat_comfort VARCHAR(MAX),
			cabin_staff_service VARCHAR(MAX),
			food_beverages VARCHAR(MAX),
			ground_service VARCHAR(MAX),
			value_for_money VARCHAR(MAX),
			entertainment VARCHAR(MAX)
		)

		BULK INSERT ba_reviews FROM ''C:\Users\Hristo\Downloads\archive(2)\ba_reviews.csv''
			WITH (
				FIRSTROW = 2,
				FIELDTERMINATOR = '','',
				ROWTERMINATOR = ''\n''
			);
		END;
	')
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'data_cleaning')
BEGIN
	EXEC('
		CREATE PROCEDURE data_cleaning
		AS

		--Applying ‘TRIM’ to remove all unwanted spaces from all text columns.
		--Checking for NULL values  
		--Deleting NULL values (p.s. proceed with CAUTION this generally bad practice in the real world, especcially without permission or discussion prior to doing it)
		--Standardizing date format
		--Replace semi-colons with commas



		UPDATE countries
		SET country = TRIM(country),
			code = TRIM(code),
			continent = TRIM(continent),
			region = TRIM(region)



		UPDATE ba_reviews
		SET header = TRIM(header),
			author = TRIM(author),
			date = TRIM(date),
			place = TRIM(place),
			content = TRIM(content),
			aircraft = TRIM(aircraft),
			traveller_type = TRIM(traveller_type),
			seat_type = TRIM(seat_type),
			route = TRIM(route),
			date_flown = TRIM(date_flown),
			recommended = TRIM(recommended),
			trip_verified = TRIM(trip_verified),
			rating = TRIM(rating),
			seat_comfort = TRIM(seat_comfort),
			cabin_staff_service = TRIM(cabin_staff_service),
			food_beverages = TRIM(food_beverages),
			ground_service = TRIM(ground_service),
			value_for_money = TRIM(value_for_money),
			entertainment = TRIM(entertainment)



		SELECT *, COUNT(*) OVER() AS null_count
		FROM countries
		WHERE country IS NULL
			OR code IS NULL
			OR continent IS NULL
			OR region IS NULL


		DELETE FROM countries
		WHERE country IS NULL
			OR code IS NULL
			OR continent IS NULL
			OR region IS NULL



		SELECT *, COUNT(*) OVER() AS null_count
		FROM ba_reviews
		WHERE header IS NULL
			OR author IS NULL
			OR date IS NULL
			OR place IS NULL
			OR content IS NULL
			OR aircraft IS NULL
			OR traveller_type IS NULL
			OR seat_type IS NULL
			OR route IS NULL
			OR date_flown IS NULL
			OR recommended IS NULL
			OR trip_verified IS NULL
			OR rating IS NULL
			OR seat_comfort IS NULL
			OR cabin_staff_service IS NULL
			OR food_beverages IS NULL
			OR ground_service IS NULL
			OR value_for_money IS NULL
			OR entertainment IS NULL



		DELETE FROM ba_reviews
		WHERE header IS NULL
			OR author IS NULL
			OR date IS NULL
			OR place IS NULL
			OR content IS NULL
			OR aircraft IS NULL
			OR traveller_type IS NULL
			OR seat_type IS NULL
			OR route IS NULL
			OR date_flown IS NULL
			OR recommended IS NULL
			OR trip_verified IS NULL
			OR rating IS NULL
			OR seat_comfort IS NULL
			OR cabin_staff_service IS NULL
			OR food_beverages IS NULL
			OR ground_service IS NULL
			OR value_for_money IS NULL
			OR entertainment IS NULL



		UPDATE ba_reviews
		SET header = REPLACE(header, '';'', '',''),
			author = REPLACE(author, '';'', '',''),
			date = REPLACE(date, '';'', '',''),
			place = REPLACE(place, '';'', '',''),
			content = REPLACE(content, '';'', '',''),
			aircraft = REPLACE(aircraft, '';'', '',''),
			traveller_type = REPLACE(traveller_type, '';'', '',''),
			seat_type = REPLACE(seat_type, '';'', '',''),
			route = REPLACE(route, '';'', '',''),
			date_flown = REPLACE(date_flown, '';'', '',''),
			recommended = REPLACE(recommended, '';'', '',''),
			trip_verified = REPLACE(trip_verified, '';'', '',''),
			rating = REPLACE(rating, '';'', '',''),
			seat_comfort = REPLACE(seat_comfort, '';'', '',''),
			cabin_staff_service = REPLACE(cabin_staff_service, '';'', '',''),
			food_beverages = REPLACE(food_beverages, '';'', '',''),
			ground_service = REPLACE(ground_service, '';'', '',''),
			value_for_money = REPLACE(value_for_money, '';'', '',''),
			entertainment = REPLACE(entertainment, '';'', '','')



		UPDATE countries
		SET country = REPLACE(country, '';'', '',''),
			code = REPLACE(code, '';'', '',''),
			continent = REPLACE(continent, '';'', '',''),
			region = REPLACE(region, '';'', '','')
	');
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'extract_procedure')
BEGIN
	EXEC('
		CREATE PROCEDURE extract_procedure
		AS

		EXEC server_config
		EXEC database_config
		EXEC populate_database
	');
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'transform_procedure')
BEGIN
	EXEC('
		CREATE PROCEDURE transform_procedure
		AS

		EXEC data_cleaning
	');
END;

IF NOT EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ETL_procedure_pipeline')
BEGIN
	EXEC('
		CREATE PROCEDURE ETL_procedure_pipeline
		AS

		EXEC extract_procedure
		EXEC transform_procedure
	');
END;

EXEC ETL_Protfolio_Project_Tableau.dbo.ETL_procedure_pipeline