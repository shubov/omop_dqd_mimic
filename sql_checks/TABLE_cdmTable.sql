/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PERSON table is present as expected based on the specification.' as check_description
  ,'PERSON' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_person' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if OBSERVATION_PERIOD table is present as expected based on the specification.' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_observation_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if VISIT_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_visit_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if VISIT_DETAIL table is present as expected based on the specification.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_visit_detail' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONDITION_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_condition_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_EXPOSURE table is present as expected based on the specification.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PROCEDURE_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_procedure_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DEVICE_EXPOSURE table is present as expected based on the specification.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_device_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if MEASUREMENT table is present as expected based on the specification.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_measurement' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if OBSERVATION table is present as expected based on the specification.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_observation' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DEATH table is present as expected based on the specification.' as check_description
  ,'DEATH' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_death' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if NOTE table is present as expected based on the specification.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_note' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if NOTE_NLP table is present as expected based on the specification.' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_note_nlp' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if SPECIMEN table is present as expected based on the specification.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_specimen' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if FACT_RELATIONSHIP table is present as expected based on the specification.' as check_description
  ,'FACT_RELATIONSHIP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_fact_relationship' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if LOCATION table is present as expected based on the specification.' as check_description
  ,'LOCATION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_location' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CARE_SITE table is present as expected based on the specification.' as check_description
  ,'CARE_SITE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_care_site' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PROVIDER table is present as expected based on the specification.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_provider' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PAYER_PLAN_PERIOD table is present as expected based on the specification.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_payer_plan_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COST table is present as expected based on the specification.' as check_description
  ,'COST' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cost' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_ERA table is present as expected based on the specification.' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DOSE_ERA table is present as expected based on the specification.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_dose_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONDITION_ERA table is present as expected based on the specification.' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_condition_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if EPISODE table is present as expected based on the specification.' as check_description
  ,'EPISODE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_episode' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if EPISODE_EVENT table is present as expected based on the specification.' as check_description
  ,'EPISODE_EVENT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_episode_event' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if METADATA table is present as expected based on the specification.' as check_description
  ,'METADATA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_metadata' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CDM_SOURCE table is present as expected based on the specification.' as check_description
  ,'CDM_SOURCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cdm_source' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if SOURCE_TO_CONCEPT_MAP table is present as expected based on the specification.' as check_description
  ,'SOURCE_TO_CONCEPT_MAP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_source_to_concept_map' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_STRENGTH table is present as expected based on the specification.' as check_description
  ,'DRUG_STRENGTH' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_strength' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COHORT table is present as expected based on the specification.' as check_description
  ,'COHORT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cohort' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/
INSERT INTO booming-edge-403620.dqd_results.dqdashboard_results
 WITH cte_all as (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/
select 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COHORT_DEFINITION table is present as expected based on the specification.' as check_description
  ,'COHORT_DEFINITION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cohort_definition' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 
    else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from
(
  select 
    num_violated_rows 
  from
  (
    select
      case 
        when count(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
) cte
)
 SELECT *
from cte_all
;

