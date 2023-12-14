/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CARE_SITE.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		where cdmtable.care_site_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_HOLDER
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_HOLDER' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.cdm_holder is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_RELEASE_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.cdm_release_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_ABBREVIATION
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_SOURCE_ABBREVIATION' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.cdm_source_abbreviation is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_NAME
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_SOURCE_NAME' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.cdm_source_name is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_VERSION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.cdm_version_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.SOURCE_RELEASE_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.source_release_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = VOCABULARY_VERSION
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.VOCABULARY_VERSION' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where cdmtable.vocabulary_version is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_DEFINITION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT.COHORT_DEFINITION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where cdmtable.cohort_definition_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT.COHORT_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where cdmtable.cohort_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT.COHORT_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where cdmtable.cohort_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = SUBJECT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT.SUBJECT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where cdmtable.subject_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.COHORT_DEFINITION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where cdmtable.cohort_definition_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_NAME
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.COHORT_DEFINITION_NAME' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where cdmtable.cohort_definition_name is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = DEFINITION_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.DEFINITION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where cdmtable.definition_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = SUBJECT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.SUBJECT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where cdmtable.subject_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where cdmtable.condition_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_ERA_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where cdmtable.condition_era_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where cdmtable.condition_era_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_ERA_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where cdmtable.condition_era_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_occurrence_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COST.COST_DOMAIN_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where cdmtable.cost_domain_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_EVENT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COST.COST_EVENT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where cdmtable.cost_event_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COST.COST_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where cdmtable.cost_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'COST.COST_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where cdmtable.cost_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEATH.DEATH_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.death_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEATH.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_exposure_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_exposure_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DOSE_ERA_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.dose_era_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DOSE_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.dose_era_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DOSE_ERA_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.dose_era_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DOSE_VALUE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.dose_value is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.drug_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where cdmtable.unit_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where cdmtable.drug_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_ERA_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where cdmtable.drug_era_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where cdmtable.drug_era_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_ERA_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where cdmtable.drug_era_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_exposure_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_exposure_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_exposure_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DRUG_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where cdmtable.drug_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where cdmtable.ingredient_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.VALID_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where cdmtable.valid_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.VALID_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where cdmtable.valid_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_OBJECT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_object_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE_EVENT.EPISODE_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
		where cdmtable.episode_event_field_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE_EVENT.EPISODE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
		where cdmtable.episode_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EVENT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'EPISODE_EVENT.EVENT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
		where cdmtable.event_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where cdmtable.domain_concept_id_1 is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where cdmtable.domain_concept_id_2 is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.FACT_ID_1' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where cdmtable.fact_id_1 is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.FACT_ID_2' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where cdmtable.fact_id_2 is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where cdmtable.relationship_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'LOCATION.LOCATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
		where cdmtable.location_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where cdmtable.metadata_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where cdmtable.metadata_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where cdmtable.metadata_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = NAME
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'METADATA.NAME' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where cdmtable.name is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.ENCODING_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.encoding_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.LANGUAGE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.language_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_CLASS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.note_class_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.note_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.note_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_TEXT' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.note_text is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.note_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.LEXICAL_VARIANT' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where cdmtable.lexical_variant is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NLP_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where cdmtable.nlp_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where cdmtable.note_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_NLP_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where cdmtable.note_nlp_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where cdmtable.observation_period_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where cdmtable.observation_period_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where cdmtable.observation_period_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where cdmtable.period_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.payer_plan_period_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.payer_plan_period_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.payer_plan_period_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PERSON.ETHNICITY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.ethnicity_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PERSON.GENDER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.gender_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PERSON.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PERSON.RACE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.race_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PERSON.YEAR_OF_BIRTH' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.year_of_birth is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_occurrence_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.provider_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CODE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.SOURCE_CODE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.source_code is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.source_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_VOCABULARY_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.SOURCE_VOCABULARY_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.source_vocabulary_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.TARGET_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.target_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_VOCABULARY_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.TARGET_VOCABULARY_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.target_vocabulary_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.VALID_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.valid_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.VALID_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where cdmtable.valid_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.specimen_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.specimen_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.specimen_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.specimen_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_occurrence_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_END_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_end_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_occurrence_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_START_DATE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_start_date is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from (
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_type_concept_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

