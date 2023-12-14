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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
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
        when COUNT(*) = 0 then 0
        else 0
    end as num_violated_rows
    from booming-edge-403620.dqd_results.cohort_definition cdmtable
  ) violated_rows
) violated_row_count,
( 
	select 1 as num_rows
) denominator
;

