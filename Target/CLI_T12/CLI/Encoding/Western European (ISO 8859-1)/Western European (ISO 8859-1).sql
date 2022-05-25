/*** MSC-WARNING - MSCEWI1039 - SEMANTIC INFORMATION COULD NOT BE LOADED FOR dateTimeTable. CHECK IF THE NAME IS INVALID OR DUPLICATED. ***/
CREATE TABLE PUBLIC.dateTimeTable (
dateCol date,
timeCol time,
timestampcol TIMESTAMP,
charToNumCol varchar(20)
);

SELECT
LEFT(TO_VARCHAR(date '2018-05-02', 'YYYY/MM/DD'), 1);

SELECT
LEFT(TO_VARCHAR(current_timestamp, 'YYYY/MM/DD HH:MI:SS'), 1);

SELECT
LEFT(TO_VARCHAR(time '10:30:45', 'HH:MI:SS'), 1);

SELECT
LEFT(TO_VARCHAR(dateCol, 'YYYY/MM/DD'), 1)
FROM PUBLIC.dateTimeTable;

SELECT
LEFT(TO_VARCHAR(timeCol, 'HH:MI:SS'), 1)
FROM PUBLIC.dateTimeTable;

SELECT
LEFT( cast(timestampcol as varchar), 1)
FROM PUBLIC.dateTimeTable;

SELECT
cast( charToNumCol as FLOAT)
FROM PUBLIC.dateTimeTable;

SELECT
CAST(timeCol AS TIMESTAMP(1) AT SOURCE TIME ZONE)
FROM PUBLIC.dateTimeTable;