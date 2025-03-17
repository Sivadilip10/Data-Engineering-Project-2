CREATE VIEW gold.[netflix_cast]
AS
SELECT * FROM OPENROWSET 
(
   BULK 'https://netflixstorageacc.dfs.core.windows.net/silver/netflix_cast/',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[netflix_category]
AS
SELECT * FROM OPENROWSET 
(
   BULK 'https://netflixstorageacc.dfs.core.windows.net/silver/netflix_category/',
   FORMAT = 'parquet'
)as query1


CREATE VIEW gold.[netflix_countries]
AS
SELECT * FROM OPENROWSET 
(
   BULK 'https://netflixstorageacc.dfs.core.windows.net/silver/netflix_countries/',
   FORMAT = 'parquet'
)as query1


CREATE VIEW gold.[netflix_directors]
AS
SELECT * FROM OPENROWSET 
(
   BULK 'https://netflixstorageacc.dfs.core.windows.net/silver/netflix_directors/',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[netflix_titles]
AS
SELECT * FROM OPENROWSET 
(
   BULK 'https://netflixstorageacc.dfs.core.windows.net/silver/netflix_titles/',
   FORMAT = 'parquet'
)as query1