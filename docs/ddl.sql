CREATE TABLE formula1_incr.control.batch_control (
  batch_id STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.control.batch_events (
  batch_id INT,
  event_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.circuits (
  circuitId STRING COLLATE UTF8_BINARY,
  url STRING COLLATE UTF8_BINARY,
  circuitName STRING COLLATE UTF8_BINARY,
  lat DOUBLE,
  long DOUBLE,
  locality STRING COLLATE UTF8_BINARY,
  country STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.constructors (
  constructorId STRING COLLATE UTF8_BINARY,
  name STRING COLLATE UTF8_BINARY,
  nationality STRING COLLATE UTF8_BINARY,
  url STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.drivers (
  driverId STRING COLLATE UTF8_BINARY,
  name STRUCT<givenName: STRING COLLATE UTF8_BINARY, familyName: STRING COLLATE UTF8_BINARY>,
  dateOfBirth DATE,
  nationality STRING COLLATE UTF8_BINARY,
  url STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.races (
  season STRING COLLATE UTF8_BINARY,
  round STRING COLLATE UTF8_BINARY,
  url STRING COLLATE UTF8_BINARY,
  raceName STRING COLLATE UTF8_BINARY,
  date STRING COLLATE UTF8_BINARY,
  circuitId STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.results (
  date DATE,
  raceName STRING COLLATE UTF8_BINARY,
  round INT,
  season INT,
  url STRING COLLATE UTF8_BINARY,
  constructorId STRING COLLATE UTF8_BINARY,
  driverId STRING COLLATE UTF8_BINARY,
  grid INT,
  laps INT,
  number INT,
  points FLOAT,
  position INT,
  positionText STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.bronze.sprints (
  date DATE,
  raceName STRING COLLATE UTF8_BINARY,
  round INT,
  season INT,
  url STRING COLLATE UTF8_BINARY,
  constructorId STRING COLLATE UTF8_BINARY,
  driverId STRING COLLATE UTF8_BINARY,
  grid INT,
  laps INT,
  number INT,
  points FLOAT,
  position INT,
  positionText STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY)
USING delta
PARTITIONED BY (batch_id)
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.circuits (
  circuit_id STRING COLLATE UTF8_BINARY,
  circuit_name STRING COLLATE UTF8_BINARY,
  latitude DOUBLE,
  longitude DOUBLE,
  locality STRING COLLATE UTF8_BINARY,
  country STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.constructors (
  constructor_id STRING COLLATE UTF8_BINARY,
  constructor_name STRING COLLATE UTF8_BINARY,
  nationality STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.drivers (
  driver_id STRING COLLATE UTF8_BINARY,
  date_of_birth DATE,
  nationality STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  driver_name STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.races (
  season STRING COLLATE UTF8_BINARY,
  round STRING COLLATE UTF8_BINARY,
  race_name STRING COLLATE UTF8_BINARY,
  race_date STRING COLLATE UTF8_BINARY,
  circuit_id STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.results (
  race_date DATE,
  race_name STRING COLLATE UTF8_BINARY,
  round INT,
  season INT,
  constructor_id STRING COLLATE UTF8_BINARY,
  driver_id STRING COLLATE UTF8_BINARY,
  grid_position INT,
  completed_laps INT,
  car_number INT,
  points FLOAT,
  final_position INT,
  final_position_text STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.silver.sprints (
  race_date DATE,
  race_name STRING COLLATE UTF8_BINARY,
  round INT,
  season INT,
  constructor_id STRING COLLATE UTF8_BINARY,
  driver_id STRING COLLATE UTF8_BINARY,
  grid_position INT,
  completed_laps INT,
  car_number INT,
  points FLOAT,
  final_position INT,
  final_position_text STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  ingestion_timestamp TIMESTAMP,
  source_file STRING COLLATE UTF8_BINARY,
  batch_id STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.gold.dim_constructors (
  constructor_id STRING COLLATE UTF8_BINARY,
  constructor_name STRING COLLATE UTF8_BINARY,
  nationality STRING COLLATE UTF8_BINARY,
  nationality_region STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.gold.dim_drivers (
  driver_id STRING COLLATE UTF8_BINARY,
  driver_name STRING COLLATE UTF8_BINARY,
  date_of_birth DATE,
  nationality STRING COLLATE UTF8_BINARY,
  nationality_region STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.gold.dim_races (
  season STRING COLLATE UTF8_BINARY,
  round STRING COLLATE UTF8_BINARY,
  race_name STRING COLLATE UTF8_BINARY,
  race_date STRING COLLATE UTF8_BINARY,
  circuit_name STRING COLLATE UTF8_BINARY,
  locality STRING COLLATE UTF8_BINARY,
  country STRING COLLATE UTF8_BINARY,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.gold.fact_session_results (
  round INT,
  season INT,
  constructor_id STRING COLLATE UTF8_BINARY,
  driver_id STRING COLLATE UTF8_BINARY,
  grid_position INT,
  completed_laps INT,
  car_number INT,
  points FLOAT,
  final_position INT,
  final_position_text STRING COLLATE UTF8_BINARY,
  status STRING COLLATE UTF8_BINARY,
  session_type STRING COLLATE UTF8_BINARY,
  is_win BOOLEAN,
  is_podium BOOLEAN,
  has_points BOOLEAN,
  created_timestamp TIMESTAMP,
  updated_timestamp TIMESTAMP)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE TABLE formula1_incr.gold.ref_nationality_region (
  nationality STRING COLLATE UTF8_BINARY,
  region STRING COLLATE UTF8_BINARY)
USING delta
DEFAULT COLLATION UTF8_BINARY
TBLPROPERTIES (
  'delta.checkpointPolicy' = 'v2',
  'delta.enableDeletionVectors' = 'true',
  'delta.enableRowTracking' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.feature.v2Checkpoint' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0')
;

CREATE VIEW gold.vw_constructors_standings (
  season,
  constructor_id,
  constructor_name,
  nationality,
  standings,
  race_starts,
  total_points,
  number_of_wins,
  number_of_podiums)
DEFAULT COLLATION UTF8_BINARY
WITH SCHEMA COMPENSATION
AS with constructor_session_summary AS (
Select r.season,
       d.constructor_id,
       d.constructor_name,
       d.nationality,
       count(*) AS race_starts,
       sum(r.points) AS total_points,
       count_if(r.is_win) AS number_of_wins,
       count_if(r.is_podium) AS number_of_podiums
from formula1_incr.gold.fact_session_results r
join formula1_incr.gold.dim_constructors d
on r.constructor_id=d.constructor_id
group by r.season,
       d.constructor_id,
       d.constructor_name,
       d.nationality
)
Select season,
       constructor_id,
       constructor_name,
       nationality,
        rank() OVER(PARTITION BY season order by total_points desc,number_of_wins desc ) AS standings,
       race_starts,
       total_points,
       number_of_wins,
       number_of_podiums


from constructor_session_summary
;

CREATE VIEW gold.vw_driver_standings (
  season,
  driver_id,
  driver_name,
  nationality,
  standings,
  race_starts,
  total_points,
  number_of_wins,
  number_of_podiums)
DEFAULT COLLATION UTF8_BINARY
WITH SCHEMA COMPENSATION
AS with driver_session_summary AS (
Select r.season,
       d.driver_id,
       d.driver_name,
       d.nationality,
       count(*) AS race_starts,
       sum(r.points) AS total_points,
       count_if(r.is_win) AS number_of_wins,
       count_if(r.is_podium) AS number_of_podiums
from formula1_incr.gold.fact_session_results r
join formula1_incr.gold.dim_drivers d
on r.driver_id=d.driver_id
group by r.season,
       d.driver_id,
       d.driver_name,
       d.nationality
)
Select season,
       driver_id,
       driver_name,
       nationality,
        rank() OVER(PARTITION BY season order by total_points desc,number_of_wins desc ) AS standings,
       race_starts,
       total_points,
       number_of_wins,
       number_of_podiums


from driver_session_summary
;
