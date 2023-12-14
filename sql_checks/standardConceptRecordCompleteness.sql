/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
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
		  'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		where cdmtable.place_of_service_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.condition_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.condition_concept_id = 0 
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
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_status_concept_id = 0 
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
		where cdmtable.condition_type_concept_id = 0 
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
		where cdmtable.cost_type_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID
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
		  'DEATH.CAUSE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.cause_concept_id = 0 
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
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
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
		  'DEATH.DEATH_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.death_type_concept_id = 0 
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
		where cdmtable.device_concept_id = 0 
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
		where cdmtable.device_type_concept_id = 0 
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
		  'DEVICE_EXPOSURE.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.unit_concept_id = 0 
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
		where cdmtable.drug_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.unit_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.drug_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.drug_concept_id = 0 
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
		where cdmtable.drug_type_concept_id = 0 
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
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
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
		  'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.route_concept_id = 0 
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
		where cdmtable.episode_concept_id = 0 
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
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.domain_concept_id_1 = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.domain_concept_id_2 = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.relationship_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID
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
		  'LOCATION.COUNTRY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
		where cdmtable.country_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.measurement_concept_id = 0 
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
		where cdmtable.measurement_type_concept_id = 0 
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
		  'MEASUREMENT.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.unit_concept_id = 0 and cdmtable.value_as_number is not null
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
	where cdmtable.value_as_number is not null
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.observation_concept_id = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.observation_type_concept_id = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
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
		  'OBSERVATION.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.unit_concept_id = 0 and cdmtable.value_as_number is not null
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
	where cdmtable.value_as_number is not null
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.period_type_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.ethnicity_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.gender_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.race_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
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
		  'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.modifier_concept_id = 0 
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
		where cdmtable.procedure_concept_id = 0 
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
		where cdmtable.procedure_type_concept_id = 0 
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
		  'PROVIDER.GENDER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.gender_concept_id = 0 
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
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
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
		  'PROVIDER.SPECIALTY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.specialty_concept_id = 0 
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
		where cdmtable.specimen_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.specimen_type_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
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
		  'SPECIMEN.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.unit_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
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
		  'VISIT_DETAIL.ADMITTED_FROM_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.admitted_from_concept_id = 0 
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
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
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
		  'VISIT_DETAIL.DISCHARGED_TO_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where cdmtable.discharged_to_concept_id = 0 
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
		where cdmtable.visit_detail_concept_id = 0 
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
		where cdmtable.visit_detail_type_concept_id = 0 
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
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.ADMITTED_FROM_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.admitted_from_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.DISCHARGED_TO_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.discharged_to_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.visit_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
		where cdmtable.visit_type_concept_id = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	select COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

