CREATE EXTERNAL TABLE gold.extcast
WITH
(
    LOCATION = 'extcast',
    DATA_SOURCE = source_is_Gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.[netflix_cast]

CREATE EXTERNAL TABLE gold.extcategory
WITH
(
    LOCATION = 'extcategory',
    DATA_SOURCE = source_is_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.[netflix_category]

CREATE EXTERNAL TABLE gold.extcountries
WITH
(
    LOCATION = 'extcountries',
    DATA_SOURCE = source_is_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.[netflix_countries]

CREATE EXTERNAL TABLE gold.extdirectors
WITH
(
    LOCATION = 'extdirectors',
    DATA_SOURCE = source_is_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.[netflix_directors]

CREATE EXTERNAL TABLE gold.exttitles
WITH
(
    LOCATION = 'exttitles',
    DATA_SOURCE = source_is_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.[netflix_titles]

