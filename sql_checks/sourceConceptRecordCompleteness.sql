/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID
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
		  'DEATH.CAUSE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.cause_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
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
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
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
		  'DEVICE_EXPOSURE.UNIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.unit_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
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
		  'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_SOURCE_CONCEPT_ID
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
		  'EPISODE.EPISODE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
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
		  'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
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
		  'MEASUREMENT.UNIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.unit_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
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
		  'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
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
		  'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.specialty_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
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
		  'VISIT_DETAIL.VISIT_DETAIL_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.visit_detail_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_source_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

