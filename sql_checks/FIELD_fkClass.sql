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
  ,'fkClass' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a value in the DRUG_CONCEPT_ID field in the DOSE_ERA table that do not conform to the INGREDIENT class.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'DRUG_CONCEPT_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_fk_class.sql' as sql_file
  ,'Conformance' as category
  ,'Computational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_fkclass_dose_era_drug_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
**********/
select 
  num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
	denominator.num_rows as num_denominator_rows
from (
	select 
	  count(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
    where co.concept_id != 0 
      and (co.concept_class_id != 'Ingredient') 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  count(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
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
  ,'fkClass' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a value in the DRUG_CONCEPT_ID field in the DRUG_ERA table that do not conform to the INGREDIENT class.' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'DRUG_CONCEPT_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_fk_class.sql' as sql_file
  ,'Conformance' as category
  ,'Computational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_fkclass_drug_era_drug_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
**********/
select 
  num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
	denominator.num_rows as num_denominator_rows
from (
	select 
	  count(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
    where co.concept_id != 0 
      and (co.concept_class_id != 'Ingredient') 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  count(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
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
  ,'fkClass' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a value in the INGREDIENT_CONCEPT_ID field in the DRUG_STRENGTH table that do not conform to the INGREDIENT class.' as check_description
  ,'DRUG_STRENGTH' as cdm_table_name
  ,'INGREDIENT_CONCEPT_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_fk_class.sql' as sql_file
  ,'Conformance' as category
  ,'Computational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_fkclass_drug_strength_ingredient_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,case when (cte.pct_violated_rows * 100) > 0 then 1 else 0 end as failed
  ,case when (cte.pct_violated_rows * 100) <= 0 then 1 else 0 end as passed
  ,null as not_applicable_reason
  ,0 as threshold_value
  ,null as notes_value
from (
  /*********
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
fkClass = Ingredient
**********/
select 
  num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
	denominator.num_rows as num_denominator_rows
from (
	select 
	  count(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.ingredient_concept_id = co.concept_id
    where co.concept_id != 0 
      and (co.concept_class_id != 'Ingredient') 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  count(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
) cte
)
 SELECT *
from cte_all
;

