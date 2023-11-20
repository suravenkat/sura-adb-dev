-- Databricks notebook source
--Mapping zone containing the Databricks Customer dataset from csv file

CREATE INCREMENTAL LIVE TABLE customers
COMMENT "The customers buying finished products, ingested from /databricks-datasets."
TBLPROPERTIES ("myCompanyPipeline.quality" = "mapping")
AS SELECT * FROM cloud_files("/databricks-datasets/retail-org/customers/", "csv");

--Added new table
--Added bronze table config

