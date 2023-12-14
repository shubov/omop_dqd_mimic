/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID
**********/
select num_violated_rows,
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
		  'CARE_SITE.LOCATION_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.location fktable 
		  on cdmtable.location_id = fktable.location_id
		where fktable.location_id is null 
		  and cdmtable.location_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.place_of_service_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.place_of_service_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.cdm_version_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.cdm_version_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_ID
fkTableName = COHORT
fkFieldName = COHORT_DEFINITION_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.dqd_results.cohort fktable
		  on cdmtable.cohort_definition_id = fktable.cohort_definition_id
		where fktable.cohort_definition_id is null 
		  and cdmtable.cohort_definition_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.dqd_results
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COHORT_DEFINITION
cdmFieldName = DEFINITION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.definition_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.definition_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.dqd_results
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COHORT_DEFINITION
cdmFieldName = SUBJECT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.subject_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.subject_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.condition_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.condition_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.condition_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.condition_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.condition_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.condition_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.condition_status_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.condition_status_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.condition_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.condition_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'CONDITION_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
fkTableName = DOMAIN
fkFieldName = DOMAIN_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.domain fktable
		  on cdmtable.cost_domain_id = fktable.domain_id
		where fktable.domain_id is null 
		  and cdmtable.cost_domain_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.cost_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.cost_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'COST.CURRENCY_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.currency_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.currency_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'COST.DRG_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drg_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drg_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'COST.REVENUE_CODE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.revenue_code_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.revenue_code_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.cause_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.cause_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.cause_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.cause_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.death_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.death_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.device_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.device_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.device_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.device_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.device_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.device_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'DEVICE_EXPOSURE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'DEVICE_EXPOSURE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'DRUG_EXPOSURE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.route_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.route_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'DRUG_EXPOSURE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = AMOUNT_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'DRUG_STRENGTH.AMOUNT_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.amount_unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.amount_unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DENOMINATOR_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'DRUG_STRENGTH.DENOMINATOR_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.denominator_unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.denominator_unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.drug_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.drug_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.ingredient_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.ingredient_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = NUMERATOR_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'DRUG_STRENGTH.NUMERATOR_UNIT_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.numerator_unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.numerator_unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.episode_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.episode_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.episode_object_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.episode_object_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.episode_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.episode_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.episode_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.episode_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.episode_event_field_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.episode_event_field_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_ID
fkTableName = EPISODE
fkFieldName = EPISODE_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.episode fktable 
		  on cdmtable.episode_id = fktable.episode_id
		where fktable.episode_id is null 
		  and cdmtable.episode_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.domain_concept_id_1 = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.domain_concept_id_1 is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.domain_concept_id_2 = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.domain_concept_id_2 is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.relationship_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.relationship_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.country_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.country_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEAS_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.MEAS_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.meas_event_field_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.meas_event_field_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.measurement_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.measurement_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.measurement_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.measurement_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.measurement_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.measurement_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.OPERATOR_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.operator_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.operator_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.value_as_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.value_as_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'MEASUREMENT.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.metadata_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.metadata_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.metadata_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.metadata_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'METADATA.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.value_as_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.value_as_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.encoding_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.encoding_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.language_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.language_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.note_class_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.note_class_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'NOTE.NOTE_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.note_event_field_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.note_event_field_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.note_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.note_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'NOTE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'NOTE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'NOTE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'NOTE_NLP.NOTE_NLP_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.note_nlp_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.note_nlp_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.note_nlp_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.note_nlp_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'NOTE_NLP.SECTION_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.section_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.section_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBS_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.OBS_EVENT_FIELD_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.obs_event_field_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.obs_event_field_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.observation_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.observation_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.observation_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.observation_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.observation_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.observation_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.QUALIFIER_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.qualifier_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.qualifier_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.value_as_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.value_as_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'OBSERVATION.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.period_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.period_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.payer_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.payer_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.payer_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.payer_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.plan_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.plan_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.plan_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.plan_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.sponsor_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.sponsor_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.sponsor_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.sponsor_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.stop_reason_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.stop_reason_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.stop_reason_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.stop_reason_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
select num_violated_rows,
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
		  'PERSON.CARE_SITE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.care_site fktable 
		  on cdmtable.care_site_id = fktable.care_site_id
		where fktable.care_site_id is null 
		  and cdmtable.care_site_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.ethnicity_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.ethnicity_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PERSON.ETHNICITY_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.ethnicity_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.ethnicity_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.gender_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.gender_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PERSON.GENDER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.gender_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.gender_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID
**********/
select num_violated_rows,
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
		  'PERSON.LOCATION_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.location fktable 
		  on cdmtable.location_id = fktable.location_id
		where fktable.location_id is null 
		  and cdmtable.location_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'PERSON.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.race_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.race_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PERSON.RACE_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.race_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.race_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.modifier_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.modifier_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.procedure_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.procedure_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.procedure_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.procedure_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.procedure_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.procedure_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'PROCEDURE_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
select num_violated_rows,
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
		  'PROVIDER.CARE_SITE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.care_site fktable 
		  on cdmtable.care_site_id = fktable.care_site_id
		where fktable.care_site_id is null 
		  and cdmtable.care_site_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.gender_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.gender_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'PROVIDER.GENDER_SOURCE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.gender_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.gender_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.specialty_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.specialty_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.specialty_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.specialty_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.target_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.target_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_VOCABULARY_ID
fkTableName = VOCABULARY
fkFieldName = VOCABULARY_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.vocabulary fktable
		  on cdmtable.target_vocabulary_id = fktable.vocabulary_id
		where fktable.vocabulary_id is null 
		  and cdmtable.target_vocabulary_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.anatomic_site_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.anatomic_site_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.disease_status_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.disease_status_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.specimen_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.specimen_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.specimen_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.specimen_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.unit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.unit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.admitted_from_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.admitted_from_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
select num_violated_rows,
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
		  'VISIT_DETAIL.CARE_SITE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.care_site fktable 
		  on cdmtable.care_site_id = fktable.care_site_id
		where fktable.care_site_id is null 
		  and cdmtable.care_site_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.discharged_to_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.discharged_to_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PARENT_VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'VISIT_DETAIL.PARENT_VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.parent_visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.parent_visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
select num_violated_rows,
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
		  'VISIT_DETAIL.PRECEDING_VISIT_DETAIL_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_detail fktable 
		  on cdmtable.preceding_visit_detail_id = fktable.visit_detail_id
		where fktable.visit_detail_id is null 
		  and cdmtable.preceding_visit_detail_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'VISIT_DETAIL.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_detail_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_detail_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_detail_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_detail_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_detail_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_detail_type_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.admitted_from_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.admitted_from_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
select num_violated_rows,
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
		  'VISIT_OCCURRENCE.CARE_SITE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.care_site fktable 
		  on cdmtable.care_site_id = fktable.care_site_id
		where fktable.care_site_id is null 
		  and cdmtable.care_site_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.discharged_to_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.discharged_to_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.person fktable 
		  on cdmtable.person_id = fktable.person_id
		where fktable.person_id is null 
		  and cdmtable.person_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
select num_violated_rows,
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
		  'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence fktable 
		  on cdmtable.preceding_visit_occurrence_id = fktable.visit_occurrence_id
		where fktable.visit_occurrence_id is null 
		  and cdmtable.preceding_visit_occurrence_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
select num_violated_rows,
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
		  'VISIT_OCCURRENCE.PROVIDER_ID' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.provider fktable 
		  on cdmtable.provider_id = fktable.provider_id
		where fktable.provider_id is null 
		  and cdmtable.provider_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_source_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_source_concept_id is not null
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
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
select num_violated_rows,
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
		  left join 
		    booming-edge-403620.mimiciv_full_current_cdm.concept fktable
		  on cdmtable.visit_type_concept_id = fktable.concept_id
		where fktable.concept_id is null 
		  and cdmtable.visit_type_concept_id is not null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

