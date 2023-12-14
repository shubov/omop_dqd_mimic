/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CARE_SITE.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.care_site_id) as STRING),'.') != 0))
      and cdmtable.care_site_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.care_site
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CARE_SITE.LOCATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.location_id) as STRING),'.') != 0))
      and cdmtable.location_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.care_site
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.place_of_service_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.place_of_service_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.place_of_service_concept_id) as STRING),'.') != 0))
      and cdmtable.place_of_service_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.care_site
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CDM_SOURCE.CDM_VERSION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cdm_version_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cdm_version_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cdm_version_concept_id) as STRING),'.') != 0))
      and cdmtable.cdm_version_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COHORT.COHORT_DEFINITION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cohort_definition_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cohort_definition_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cohort_definition_id) as STRING),'.') != 0))
      and cdmtable.cohort_definition_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COHORT.SUBJECT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.subject_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.subject_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.subject_id) as STRING),'.') != 0))
      and cdmtable.subject_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.COHORT_DEFINITION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cohort_definition_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cohort_definition_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cohort_definition_id) as STRING),'.') != 0))
      and cdmtable.cohort_definition_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.DEFINITION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.definition_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.definition_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.definition_type_concept_id) as STRING),'.') != 0))
      and cdmtable.definition_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COHORT_DEFINITION.SUBJECT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.dqd_results.cohort_definition cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.subject_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.subject_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.subject_concept_id) as STRING),'.') != 0))
      and cdmtable.subject_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort_definition
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_concept_id) as STRING),'.') != 0))
      and cdmtable.condition_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_era_id) as STRING),'.') != 0))
      and cdmtable.condition_era_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.CONDITION_OCCURRENCE_COUNT' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_occurrence_count AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_occurrence_count AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_occurrence_count) as STRING),'.') != 0))
      and cdmtable.condition_occurrence_count is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_concept_id) as STRING),'.') != 0))
      and cdmtable.condition_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_occurrence_id) as STRING),'.') != 0))
      and cdmtable.condition_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_source_concept_id) as STRING),'.') != 0))
      and cdmtable.condition_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_status_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_status_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_status_concept_id) as STRING),'.') != 0))
      and cdmtable.condition_status_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.condition_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.condition_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.condition_type_concept_id) as STRING),'.') != 0))
      and cdmtable.condition_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.COST_EVENT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cost_event_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cost_event_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cost_event_id) as STRING),'.') != 0))
      and cdmtable.cost_event_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.COST_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cost_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cost_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cost_id) as STRING),'.') != 0))
      and cdmtable.cost_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.COST_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cost_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cost_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cost_type_concept_id) as STRING),'.') != 0))
      and cdmtable.cost_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.CURRENCY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.currency_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.currency_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.currency_concept_id) as STRING),'.') != 0))
      and cdmtable.currency_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.DRG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drg_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drg_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drg_concept_id) as STRING),'.') != 0))
      and cdmtable.drg_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAYER_PLAN_PERIOD_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.PAYER_PLAN_PERIOD_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.payer_plan_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.payer_plan_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.payer_plan_period_id) as STRING),'.') != 0))
      and cdmtable.payer_plan_period_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'COST.REVENUE_CODE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.revenue_code_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.revenue_code_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.revenue_code_concept_id) as STRING),'.') != 0))
      and cdmtable.revenue_code_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cost
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEATH.CAUSE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cause_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cause_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cause_concept_id) as STRING),'.') != 0))
      and cdmtable.cause_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEATH.CAUSE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.cause_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.cause_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.cause_source_concept_id) as STRING),'.') != 0))
      and cdmtable.cause_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEATH.DEATH_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.death_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.death_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.death_type_concept_id) as STRING),'.') != 0))
      and cdmtable.death_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEATH.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.device_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.device_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.device_concept_id) as STRING),'.') != 0))
      and cdmtable.device_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.device_exposure_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.device_exposure_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.device_exposure_id) as STRING),'.') != 0))
      and cdmtable.device_exposure_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.device_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.device_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.device_source_concept_id) as STRING),'.') != 0))
      and cdmtable.device_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.device_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.device_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.device_type_concept_id) as STRING),'.') != 0))
      and cdmtable.device_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.QUANTITY' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.quantity AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.quantity AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.quantity) as STRING),'.') != 0))
      and cdmtable.quantity is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.UNIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_source_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DOSE_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.dose_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.dose_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.dose_era_id) as STRING),'.') != 0))
      and cdmtable.dose_era_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DOSE_ERA.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_ERA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_era_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_era_id) as STRING),'.') != 0))
      and cdmtable.drug_era_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.DRUG_EXPOSURE_COUNT' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_exposure_count AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_exposure_count AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_exposure_count) as STRING),'.') != 0))
      and cdmtable.drug_exposure_count is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.GAP_DAYS' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.gap_days AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.gap_days AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.gap_days) as STRING),'.') != 0))
      and cdmtable.gap_days is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_ERA.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DAYS_SUPPLY' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.days_supply AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.days_supply AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.days_supply) as STRING),'.') != 0))
      and cdmtable.days_supply is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_exposure_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_exposure_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_exposure_id) as STRING),'.') != 0))
      and cdmtable.drug_exposure_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_source_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_type_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.REFILLS' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.refills AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.refills AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.refills) as STRING),'.') != 0))
      and cdmtable.refills is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.route_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.route_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.route_concept_id) as STRING),'.') != 0))
      and cdmtable.route_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = AMOUNT_UNIT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.AMOUNT_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.amount_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.amount_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.amount_unit_concept_id) as STRING),'.') != 0))
      and cdmtable.amount_unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = BOX_SIZE
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.BOX_SIZE' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.box_size AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.box_size AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.box_size) as STRING),'.') != 0))
      and cdmtable.box_size is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DENOMINATOR_UNIT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.DENOMINATOR_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.denominator_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.denominator_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.denominator_unit_concept_id) as STRING),'.') != 0))
      and cdmtable.denominator_unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.DRUG_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.drug_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.drug_concept_id) as STRING),'.') != 0))
      and cdmtable.drug_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.ingredient_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.ingredient_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.ingredient_concept_id) as STRING),'.') != 0))
      and cdmtable.ingredient_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = NUMERATOR_UNIT_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'DRUG_STRENGTH.NUMERATOR_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.numerator_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.numerator_unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.numerator_unit_concept_id) as STRING),'.') != 0))
      and cdmtable.numerator_unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_concept_id) as STRING),'.') != 0))
      and cdmtable.episode_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_NUMBER
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_NUMBER' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_number AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_number AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_number) as STRING),'.') != 0))
      and cdmtable.episode_number is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_OBJECT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_object_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_object_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_object_concept_id) as STRING),'.') != 0))
      and cdmtable.episode_object_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_source_concept_id) as STRING),'.') != 0))
      and cdmtable.episode_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE.EPISODE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_type_concept_id) as STRING),'.') != 0))
      and cdmtable.episode_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'EPISODE_EVENT.EPISODE_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.episode_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.episode_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.episode_event_field_concept_id) as STRING),'.') != 0))
      and cdmtable.episode_event_field_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode_event
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.domain_concept_id_1 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.domain_concept_id_1 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.domain_concept_id_1) as STRING),'.') != 0))
      and cdmtable.domain_concept_id_1 is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.domain_concept_id_2 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.domain_concept_id_2 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.domain_concept_id_2) as STRING),'.') != 0))
      and cdmtable.domain_concept_id_2 is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.FACT_ID_1' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.fact_id_1 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.fact_id_1 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.fact_id_1) as STRING),'.') != 0))
      and cdmtable.fact_id_1 is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.FACT_ID_2' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.fact_id_2 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.fact_id_2 AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.fact_id_2) as STRING),'.') != 0))
      and cdmtable.fact_id_2 is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.relationship_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.relationship_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.relationship_concept_id) as STRING),'.') != 0))
      and cdmtable.relationship_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'LOCATION.COUNTRY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.country_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.country_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.country_concept_id) as STRING),'.') != 0))
      and cdmtable.country_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.location
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'LOCATION.LOCATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.location_id) as STRING),'.') != 0))
      and cdmtable.location_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.location
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEAS_EVENT_FIELD_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEAS_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.meas_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.meas_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.meas_event_field_concept_id) as STRING),'.') != 0))
      and cdmtable.meas_event_field_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.measurement_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.measurement_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.measurement_concept_id) as STRING),'.') != 0))
      and cdmtable.measurement_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.measurement_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.measurement_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.measurement_id) as STRING),'.') != 0))
      and cdmtable.measurement_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.measurement_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.measurement_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.measurement_source_concept_id) as STRING),'.') != 0))
      and cdmtable.measurement_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.measurement_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.measurement_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.measurement_type_concept_id) as STRING),'.') != 0))
      and cdmtable.measurement_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.OPERATOR_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.operator_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.operator_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.operator_concept_id) as STRING),'.') != 0))
      and cdmtable.operator_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.UNIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_source_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.value_as_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.value_as_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.value_as_concept_id) as STRING),'.') != 0))
      and cdmtable.value_as_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'MEASUREMENT.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.metadata_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.metadata_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.metadata_concept_id) as STRING),'.') != 0))
      and cdmtable.metadata_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.metadata_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.metadata_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.metadata_id) as STRING),'.') != 0))
      and cdmtable.metadata_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'METADATA.METADATA_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.metadata_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.metadata_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.metadata_type_concept_id) as STRING),'.') != 0))
      and cdmtable.metadata_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = VALUE_AS_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'METADATA.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.value_as_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.value_as_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.value_as_concept_id) as STRING),'.') != 0))
      and cdmtable.value_as_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.metadata
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.ENCODING_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.encoding_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.encoding_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.encoding_concept_id) as STRING),'.') != 0))
      and cdmtable.encoding_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.LANGUAGE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.language_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.language_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.language_concept_id) as STRING),'.') != 0))
      and cdmtable.language_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_CLASS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_class_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_class_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_class_concept_id) as STRING),'.') != 0))
      and cdmtable.note_class_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_FIELD_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_event_field_concept_id) as STRING),'.') != 0))
      and cdmtable.note_event_field_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_id) as STRING),'.') != 0))
      and cdmtable.note_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.NOTE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_type_concept_id) as STRING),'.') != 0))
      and cdmtable.note_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_id) as STRING),'.') != 0))
      and cdmtable.note_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_NLP_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_nlp_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_nlp_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_nlp_concept_id) as STRING),'.') != 0))
      and cdmtable.note_nlp_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_NLP_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_nlp_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_nlp_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_nlp_id) as STRING),'.') != 0))
      and cdmtable.note_nlp_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.note_nlp_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.note_nlp_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.note_nlp_source_concept_id) as STRING),'.') != 0))
      and cdmtable.note_nlp_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'NOTE_NLP.SECTION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.section_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.section_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.section_concept_id) as STRING),'.') != 0))
      and cdmtable.section_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBS_EVENT_FIELD_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBS_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.obs_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.obs_event_field_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.obs_event_field_concept_id) as STRING),'.') != 0))
      and cdmtable.obs_event_field_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.observation_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.observation_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.observation_concept_id) as STRING),'.') != 0))
      and cdmtable.observation_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.observation_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.observation_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.observation_id) as STRING),'.') != 0))
      and cdmtable.observation_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.observation_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.observation_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.observation_source_concept_id) as STRING),'.') != 0))
      and cdmtable.observation_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.observation_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.observation_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.observation_type_concept_id) as STRING),'.') != 0))
      and cdmtable.observation_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.QUALIFIER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.qualifier_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.qualifier_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.qualifier_concept_id) as STRING),'.') != 0))
      and cdmtable.qualifier_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.observation_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.observation_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.observation_period_id) as STRING),'.') != 0))
      and cdmtable.observation_period_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.period_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.period_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.period_type_concept_id) as STRING),'.') != 0))
      and cdmtable.period_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'OBSERVATION_PERIOD.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.payer_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.payer_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.payer_concept_id) as STRING),'.') != 0))
      and cdmtable.payer_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.payer_plan_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.payer_plan_period_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.payer_plan_period_id) as STRING),'.') != 0))
      and cdmtable.payer_plan_period_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.payer_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.payer_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.payer_source_concept_id) as STRING),'.') != 0))
      and cdmtable.payer_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.plan_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.plan_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.plan_concept_id) as STRING),'.') != 0))
      and cdmtable.plan_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.plan_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.plan_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.plan_source_concept_id) as STRING),'.') != 0))
      and cdmtable.plan_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.sponsor_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.sponsor_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.sponsor_concept_id) as STRING),'.') != 0))
      and cdmtable.sponsor_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.sponsor_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.sponsor_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.sponsor_source_concept_id) as STRING),'.') != 0))
      and cdmtable.sponsor_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.stop_reason_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.stop_reason_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.stop_reason_concept_id) as STRING),'.') != 0))
      and cdmtable.stop_reason_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.stop_reason_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.stop_reason_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.stop_reason_source_concept_id) as STRING),'.') != 0))
      and cdmtable.stop_reason_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.care_site_id) as STRING),'.') != 0))
      and cdmtable.care_site_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.DAY_OF_BIRTH' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.day_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.day_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.day_of_birth) as STRING),'.') != 0))
      and cdmtable.day_of_birth is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.ETHNICITY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.ethnicity_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.ethnicity_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.ethnicity_concept_id) as STRING),'.') != 0))
      and cdmtable.ethnicity_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.ETHNICITY_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.ethnicity_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.ethnicity_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.ethnicity_source_concept_id) as STRING),'.') != 0))
      and cdmtable.ethnicity_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.GENDER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.gender_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.gender_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.gender_concept_id) as STRING),'.') != 0))
      and cdmtable.gender_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.GENDER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.gender_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.gender_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.gender_source_concept_id) as STRING),'.') != 0))
      and cdmtable.gender_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.LOCATION_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.location_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.location_id) as STRING),'.') != 0))
      and cdmtable.location_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.MONTH_OF_BIRTH' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.month_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.month_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.month_of_birth) as STRING),'.') != 0))
      and cdmtable.month_of_birth is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.RACE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.race_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.race_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.race_concept_id) as STRING),'.') != 0))
      and cdmtable.race_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.RACE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.race_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.race_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.race_source_concept_id) as STRING),'.') != 0))
      and cdmtable.race_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PERSON.YEAR_OF_BIRTH' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.year_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.year_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.year_of_birth) as STRING),'.') != 0))
      and cdmtable.year_of_birth is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.modifier_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.modifier_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.modifier_concept_id) as STRING),'.') != 0))
      and cdmtable.modifier_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.procedure_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.procedure_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.procedure_concept_id) as STRING),'.') != 0))
      and cdmtable.procedure_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.procedure_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.procedure_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.procedure_occurrence_id) as STRING),'.') != 0))
      and cdmtable.procedure_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.procedure_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.procedure_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.procedure_source_concept_id) as STRING),'.') != 0))
      and cdmtable.procedure_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.procedure_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.procedure_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.procedure_type_concept_id) as STRING),'.') != 0))
      and cdmtable.procedure_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.QUANTITY' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.quantity AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.quantity AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.quantity) as STRING),'.') != 0))
      and cdmtable.quantity is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.care_site_id) as STRING),'.') != 0))
      and cdmtable.care_site_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.GENDER_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.gender_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.gender_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.gender_concept_id) as STRING),'.') != 0))
      and cdmtable.gender_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.GENDER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.gender_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.gender_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.gender_source_concept_id) as STRING),'.') != 0))
      and cdmtable.gender_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.SPECIALTY_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.specialty_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.specialty_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.specialty_concept_id) as STRING),'.') != 0))
      and cdmtable.specialty_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.specialty_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.specialty_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.specialty_source_concept_id) as STRING),'.') != 0))
      and cdmtable.specialty_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'PROVIDER.YEAR_OF_BIRTH' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.year_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.year_of_birth AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.year_of_birth) as STRING),'.') != 0))
      and cdmtable.year_of_birth is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.source_concept_id) as STRING),'.') != 0))
      and cdmtable.source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SOURCE_TO_CONCEPT_MAP.TARGET_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.target_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.target_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.target_concept_id) as STRING),'.') != 0))
      and cdmtable.target_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.anatomic_site_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.anatomic_site_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.anatomic_site_concept_id) as STRING),'.') != 0))
      and cdmtable.anatomic_site_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.disease_status_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.disease_status_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.disease_status_concept_id) as STRING),'.') != 0))
      and cdmtable.disease_status_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.specimen_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.specimen_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.specimen_concept_id) as STRING),'.') != 0))
      and cdmtable.specimen_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.specimen_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.specimen_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.specimen_id) as STRING),'.') != 0))
      and cdmtable.specimen_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.specimen_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.specimen_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.specimen_type_concept_id) as STRING),'.') != 0))
      and cdmtable.specimen_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'SPECIMEN.UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.unit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.unit_concept_id) as STRING),'.') != 0))
      and cdmtable.unit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.care_site_id) as STRING),'.') != 0))
      and cdmtable.care_site_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.DISCHARGED_TO_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.discharged_to_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.discharged_to_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.discharged_to_concept_id) as STRING),'.') != 0))
      and cdmtable.discharged_to_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PARENT_VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.PARENT_VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.parent_visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.parent_visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.parent_visit_detail_id) as STRING),'.') != 0))
      and cdmtable.parent_visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.PRECEDING_VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.preceding_visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.preceding_visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.preceding_visit_detail_id) as STRING),'.') != 0))
      and cdmtable.preceding_visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_concept_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_detail_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_detail_type_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_detail_type_concept_id) as STRING),'.') != 0))
      and cdmtable.visit_detail_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_DETAIL.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.ADMITTED_FROM_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.admitted_from_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.admitted_from_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.admitted_from_concept_id) as STRING),'.') != 0))
      and cdmtable.admitted_from_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.CARE_SITE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.care_site_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.care_site_id) as STRING),'.') != 0))
      and cdmtable.care_site_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.DISCHARGED_TO_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.discharged_to_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.discharged_to_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.discharged_to_concept_id) as STRING),'.') != 0))
      and cdmtable.discharged_to_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.PERSON_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.person_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.person_id) as STRING),'.') != 0))
      and cdmtable.person_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.preceding_visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.preceding_visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.preceding_visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.preceding_visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
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
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.provider_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.provider_id) as STRING),'.') != 0))
      and cdmtable.provider_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_concept_id) as STRING),'.') != 0))
      and cdmtable.visit_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_occurrence_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_occurrence_id) as STRING),'.') != 0))
      and cdmtable.visit_occurrence_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
	  COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where 
		  (CASE WHEN SAFE_CAST(cdmtable.visit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 0 
		    or (CASE WHEN SAFE_CAST(cdmtable.visit_source_concept_id AS FLOAT64) IS NULL THEN 0 ELSE 1 END = 1 
		      and STRPOS(cast(abs(cdmtable.visit_source_concept_id) as STRING),'.') != 0))
      and cdmtable.visit_source_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
) denominator
;

