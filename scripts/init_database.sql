/*
=============================================================
        DATA WAREHOUSE - DATABASE & SCHEMA SETUP
        PostgreSQL Version
=============================================================

Purpose:
    1. Drop the DataWarehouse database if it already exists.
    2. Create a fresh DataWarehouse database.
    3. Create Bronze, Silver and Gold schemas.

Architecture:

    DataWarehouse
    |
    +--- bronze
    |
    +--- silver
    |
    +--- gold

WARNING:
    Running this script will permanently delete the existing
    DataWarehouse database and all data inside it.

    Make sure you have a backup before running this script.

PostgreSQL Version:
    Compatible with PostgreSQL / pgAdmin
=============================================================
*/
 

-- Drop the existing DataWarehouse database
DROP DATABASE IF EXISTS "DataWarehouse";


/*
=============================================================
STEP 2: CREATE DATABASE
=============================================================
*/

CREATE DATABASE "DataWarehouse";

/*
=============================================================
STEP 4: CREATE SCHEMAS
=============================================================
*/

-- Bronze Layer
CREATE SCHEMA IF NOT EXISTS bronze;


-- Silver Layer
CREATE SCHEMA IF NOT EXISTS silver;


-- Gold Layer
CREATE SCHEMA IF NOT EXISTS gold;


/*
=============================================================
STEP 5: VERIFY DATABASE SCHEMAS
=============================================================
*/

SELECT
    schema_name
FROM information_schema.schemata
WHERE schema_name IN ('bronze', 'silver', 'gold')
ORDER BY schema_name;


/*
=============================================================
EXPECTED RESULT
=============================================================

 schema_name
-------------
 bronze
 gold
 silver

=============================================================
*/