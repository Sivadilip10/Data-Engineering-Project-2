CREATE SCHEMA gold;

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SivaDilip@123'

CREATE DATABASE SCOPED CREDENTIAL credential_Siva
   WITH IDENTITY = 'managed identity';

CREATE EXTERNAL DATA SOURCE source_is_silver
   WITH
   (
   LOCATION =       'https://netflixstorageacc.dfs.core.windows.net/silver',
    CREDENTIAL = credential_siva
    )
CREATE EXTERNAL DATA SOURCE source_is_Gold
   WITH
   (
   LOCATION = 'https://netflixstorageacc.dfs.core.windows.net/gold',
   CREDENTIAL = credential_siva
   )

CREATE EXTERNAL FILE FORMAT format_parquet
   WITH
   (
     FORMAT_TYPE = PARQUET,
     DATA_COMPRESSION ='org.apache.hadoop.io.compress.SnappyCodec'
   )

