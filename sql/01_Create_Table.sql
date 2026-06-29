CREATE EXTERNAL TABLE flights (
    YEAR INT,
    MONTH_NUM STRING,
    MONTH_MON STRING,
    FLT_DATE STRING,
    APT_ICAO STRING,
    APT_NAME STRING,
    STATE_NAME STRING,
    FLT_DEP_1 INT,
    FLT_ARR_1 INT,
    FLT_TOT_1 INT,
    FLT_DEP_IFR_2 STRING,
    FLT_ARR_IFR_2 STRING,
    FLT_TOT_IFR_2 STRING,
    `Pivot Label` STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = "\""
)
LOCATION 's3://amit-flight-processed-euw1/'
TBLPROPERTIES (
  "skip.header.line.count"="1"
);
