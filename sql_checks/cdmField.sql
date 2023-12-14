/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_NAME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_name) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(location_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(place_of_service_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(place_of_service_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.care_site cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_ETL_REFERENCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_etl_reference) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_HOLDER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_holder) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_release_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_ABBREVIATION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_source_abbreviation) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_NAME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_source_name) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_version) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cdm_version_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_DESCRIPTION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_description) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_DOCUMENTATION_REFERENCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_documentation_reference) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_release_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = VOCABULARY_VERSION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(vocabulary_version) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_DEFINITION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_definition_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = SUBJECT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(subject_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_DESCRIPTION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_definition_description) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_definition_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_NAME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_definition_name) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_SYNTAX
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_definition_syntax) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_INITIATION_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cohort_initiation_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = DEFINITION_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(definition_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT_DEFINITION
cdmFieldName = SUBJECT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(subject_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_era_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_era_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_era_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_occurrence_count) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_status_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_status_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(condition_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = STOP_REASON
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(stop_reason) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = AMOUNT_ALLOWED
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(amount_allowed) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cost_domain_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_EVENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cost_event_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cost_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cost_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(currency_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drg_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = DRG_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drg_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_BY_PATIENT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_by_patient) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_BY_PAYER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_by_payer) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_BY_PRIMARY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_by_primary) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_DISPENSING_FEE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_dispensing_fee) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_INGREDIENT_COST
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_ingredient_cost) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COINSURANCE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_patient_coinsurance) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COPAY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_patient_copay) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAID_PATIENT_DEDUCTIBLE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(paid_patient_deductible) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = PAYER_PLAN_PERIOD_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_plan_period_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(revenue_code_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = REVENUE_CODE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(revenue_code_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = TOTAL_CHARGE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(total_charge) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = TOTAL_COST
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(total_cost) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = COST
cdmFieldName = TOTAL_PAID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(total_paid) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.cost cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cause_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cause_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(cause_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(death_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(death_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(death_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_exposure_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_exposure_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_exposure_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_exposure_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_exposure_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(device_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PRODUCTION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(production_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(quantity) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIQUE_DEVICE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unique_device_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dose_era_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dose_era_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dose_era_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dose_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_era_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_era_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_era_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_count) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gap_days) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(days_supply) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DOSE_UNIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dose_unit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_exposure_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = LOT_NUMBER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(lot_number) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(quantity) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(refills) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(route_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(route_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = SIG
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(sig) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = STOP_REASON
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(stop_reason) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(verbatim_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = AMOUNT_UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(amount_unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = AMOUNT_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(amount_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = BOX_SIZE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(box_size) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DENOMINATOR_UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(denominator_unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DENOMINATOR_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(denominator_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DRUG_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(drug_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(ingredient_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INVALID_REASON
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(invalid_reason) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = NUMERATOR_UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(numerator_unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = NUMERATOR_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(numerator_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(valid_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(valid_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_NUMBER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_number) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_object_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_PARENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_parent_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_event_field_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(episode_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EVENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(event_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.episode_event cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(domain_concept_id_1) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(domain_concept_id_2) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(fact_id_1) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(fact_id_2) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(relationship_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.fact_relationship cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = ADDRESS_1
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(address_1) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = ADDRESS_2
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(address_2) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = CITY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(city) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(country_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTRY_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(country_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(county) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = LATITUDE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(latitude) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(location_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = LOCATION_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(location_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = LONGITUDE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(longitude) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = STATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(state) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = ZIP
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(zip) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.location cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEAS_EVENT_FIELD_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(meas_event_field_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_EVENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_event_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_time) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(measurement_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(operator_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_HIGH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(range_high) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_LOW
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(range_low) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_NUMBER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_number) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(metadata_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(metadata_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(metadata_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(metadata_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = METADATA_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(metadata_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = NAME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(name) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = VALUE_AS_NUMBER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_number) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = METADATA
cdmFieldName = VALUE_AS_STRING
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_string) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.metadata cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(encoding_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(language_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_class_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_FIELD_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_event_field_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_event_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_text) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TITLE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_title) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(lexical_variant) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(nlp_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(nlp_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NLP_SYSTEM
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(nlp_system) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_nlp_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_nlp_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(note_nlp_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(section_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = SNIPPET
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(snippet) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = TERM_EXISTS
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(term_exists) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = TERM_MODIFIERS
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(term_modifiers) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = TERM_TEMPORAL
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(term_temporal) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBS_EVENT_FIELD_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(obs_event_field_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_EVENT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_event_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(qualifier_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(qualifier_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_NUMBER
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_number) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_STRING
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_as_string) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VALUE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(value_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_period_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_period_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(observation_period_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(period_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = FAMILY_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(family_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_plan_period_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_plan_period_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_plan_period_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(payer_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(plan_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(plan_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(plan_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(sponsor_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(sponsor_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(sponsor_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(stop_reason_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(stop_reason_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(stop_reason_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(birth_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(day_of_birth) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(ethnicity_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(ethnicity_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(ethnicity_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(location_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(month_of_birth) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PERSON_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(race_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(race_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(race_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(year_of_birth) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(modifier_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(modifier_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(procedure_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(quantity) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = DEA
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(dea) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(gender_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = NPI
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(npi) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_NAME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_name) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specialty_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specialty_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specialty_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(year_of_birth) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = INVALID_REASON
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(invalid_reason) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CODE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_code) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CODE_DESCRIPTION
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_code_description) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_VOCABULARY_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(source_vocabulary_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(target_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_VOCABULARY_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(target_vocabulary_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(valid_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(valid_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(anatomic_site_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(anatomic_site_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(disease_status_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(disease_status_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = QUANTITY
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(quantity) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_source_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(specimen_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(unit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(admitted_from_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(admitted_from_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(discharged_to_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(discharged_to_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PARENT_VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(parent_visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(preceding_visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_detail_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(admitted_from_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(admitted_from_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(care_site_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(discharged_to_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(discharged_to_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(person_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(preceding_visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(provider_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_end_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_end_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_occurrence_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_source_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_source_value) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_start_date) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_start_datetime) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
**********/
select 
  num_violated_rows, 
  case 
    when denominator.num_rows = 0 then 0 else 1.0*num_violated_rows/denominator.num_rows 
  end as pct_violated_rows, 
  denominator.num_rows as num_denominator_rows
from (
  select num_violated_rows from (
    select
      case 
        when COUNT(visit_type_concept_id) = 0 then 0
        else 0
      end as num_violated_rows
    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    ) violated_rows
) violated_row_count,
( 
  select 1 as num_rows
) denominator
;

