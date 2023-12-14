/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE
standardConceptFieldName = CONDITION_CONCEPT_ID
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
		select distinct 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_VALUE' as violating_field, 
		  cdmtable.condition_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.condition_source_value) + count(distinct case when cdmtable.condition_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE
standardConceptFieldName = CONDITION_STATUS_CONCEPT_ID
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
		select distinct 
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_SOURCE_VALUE' as violating_field, 
		  cdmtable.condition_status_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
		where cdmtable.condition_status_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.condition_status_source_value) + count(distinct case when cdmtable.condition_status_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_VALUE
standardConceptFieldName = CAUSE_SOURCE_CONCEPT_ID
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
		select distinct 
		  'DEATH.CAUSE_SOURCE_VALUE' as violating_field, 
		  cdmtable.cause_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
		where cdmtable.cause_source_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.cause_source_value) + count(distinct case when cdmtable.cause_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE
standardConceptFieldName = DEVICE_CONCEPT_ID
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
		select distinct 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_VALUE' as violating_field, 
		  cdmtable.device_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.device_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.device_source_value) + count(distinct case when cdmtable.device_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		select distinct 
		  'DEVICE_EXPOSURE.UNIT_SOURCE_VALUE' as violating_field, 
		  cdmtable.unit_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
		where cdmtable.unit_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.unit_source_value) + count(distinct case when cdmtable.unit_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE
standardConceptFieldName = DRUG_CONCEPT_ID
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
		select distinct 
		  'DRUG_EXPOSURE.DRUG_SOURCE_VALUE' as violating_field, 
		  cdmtable.drug_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.drug_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.drug_source_value) + count(distinct case when cdmtable.drug_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE
standardConceptFieldName = ROUTE_CONCEPT_ID
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
		select distinct 
		  'DRUG_EXPOSURE.ROUTE_SOURCE_VALUE' as violating_field, 
		  cdmtable.route_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
		where cdmtable.route_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.route_source_value) + count(distinct case when cdmtable.route_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE
standardConceptFieldName = MEASUREMENT_CONCEPT_ID
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
		select distinct 
		  'MEASUREMENT.MEASUREMENT_SOURCE_VALUE' as violating_field, 
		  cdmtable.measurement_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.measurement_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.measurement_source_value) + count(distinct case when cdmtable.measurement_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		select distinct 
		  'MEASUREMENT.UNIT_SOURCE_VALUE' as violating_field, 
		  cdmtable.unit_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		where cdmtable.unit_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.unit_source_value) + count(distinct case when cdmtable.unit_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE
standardConceptFieldName = OBSERVATION_CONCEPT_ID
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
		select distinct 
		  'OBSERVATION.OBSERVATION_SOURCE_VALUE' as violating_field, 
		  cdmtable.observation_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.observation_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.observation_source_value) + count(distinct case when cdmtable.observation_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE
standardConceptFieldName = QUALIFIER_CONCEPT_ID
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
		select distinct 
		  'OBSERVATION.QUALIFIER_SOURCE_VALUE' as violating_field, 
		  cdmtable.qualifier_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.qualifier_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.qualifier_source_value) + count(distinct case when cdmtable.qualifier_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		select distinct 
		  'OBSERVATION.UNIT_SOURCE_VALUE' as violating_field, 
		  cdmtable.unit_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
		where cdmtable.unit_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.unit_source_value) + count(distinct case when cdmtable.unit_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE
standardConceptFieldName = PAYER_CONCEPT_ID
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
		select distinct 
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_VALUE' as violating_field, 
		  cdmtable.payer_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.payer_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.payer_source_value) + count(distinct case when cdmtable.payer_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE
standardConceptFieldName = PLAN_CONCEPT_ID
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
		select distinct 
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_VALUE' as violating_field, 
		  cdmtable.plan_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.plan_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.plan_source_value) + count(distinct case when cdmtable.plan_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE
standardConceptFieldName = SPONSOR_CONCEPT_ID
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
		select distinct 
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_VALUE' as violating_field, 
		  cdmtable.sponsor_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.sponsor_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.sponsor_source_value) + count(distinct case when cdmtable.sponsor_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE
standardConceptFieldName = STOP_REASON_CONCEPT_ID
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
		select distinct 
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_VALUE' as violating_field, 
		  cdmtable.stop_reason_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
		where cdmtable.stop_reason_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.stop_reason_source_value) + count(distinct case when cdmtable.stop_reason_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_VALUE
standardConceptFieldName = ETHNICITY_CONCEPT_ID
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
		select distinct 
		  'PERSON.ETHNICITY_SOURCE_VALUE' as violating_field, 
		  cdmtable.ethnicity_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.ethnicity_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.ethnicity_source_value) + count(distinct case when cdmtable.ethnicity_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID
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
		select distinct 
		  'PERSON.GENDER_SOURCE_VALUE' as violating_field, 
		  cdmtable.gender_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.gender_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.gender_source_value) + count(distinct case when cdmtable.gender_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_VALUE
standardConceptFieldName = RACE_CONCEPT_ID
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
		select distinct 
		  'PERSON.RACE_SOURCE_VALUE' as violating_field, 
		  cdmtable.race_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
		where cdmtable.race_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.race_source_value) + count(distinct case when cdmtable.race_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE
standardConceptFieldName = MODIFIER_CONCEPT_ID
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
		select distinct 
		  'PROCEDURE_OCCURRENCE.MODIFIER_SOURCE_VALUE' as violating_field, 
		  cdmtable.modifier_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.modifier_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.modifier_source_value) + count(distinct case when cdmtable.modifier_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE
standardConceptFieldName = PROCEDURE_CONCEPT_ID
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
		select distinct 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_VALUE' as violating_field, 
		  cdmtable.procedure_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
		where cdmtable.procedure_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.procedure_source_value) + count(distinct case when cdmtable.procedure_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID
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
		select distinct 
		  'PROVIDER.GENDER_SOURCE_VALUE' as violating_field, 
		  cdmtable.gender_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.gender_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.gender_source_value) + count(distinct case when cdmtable.gender_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE
standardConceptFieldName = SPECIALTY_CONCEPT_ID
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
		select distinct 
		  'PROVIDER.SPECIALTY_SOURCE_VALUE' as violating_field, 
		  cdmtable.specialty_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
		where cdmtable.specialty_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.specialty_source_value) + count(distinct case when cdmtable.specialty_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.provider cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE
standardConceptFieldName = ANATOMIC_SITE_CONCEPT_ID
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
		select distinct 
		  'SPECIMEN.ANATOMIC_SITE_SOURCE_VALUE' as violating_field, 
		  cdmtable.anatomic_site_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.anatomic_site_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.anatomic_site_source_value) + count(distinct case when cdmtable.anatomic_site_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE
standardConceptFieldName = DISEASE_STATUS_CONCEPT_ID
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
		select distinct 
		  'SPECIMEN.DISEASE_STATUS_SOURCE_VALUE' as violating_field, 
		  cdmtable.disease_status_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.disease_status_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.disease_status_source_value) + count(distinct case when cdmtable.disease_status_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE
standardConceptFieldName = SPECIMEN_CONCEPT_ID
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
		select distinct 
		  'SPECIMEN.SPECIMEN_SOURCE_VALUE' as violating_field, 
		  cdmtable.specimen_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.specimen_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.specimen_source_value) + count(distinct case when cdmtable.specimen_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		select distinct 
		  'SPECIMEN.UNIT_SOURCE_VALUE' as violating_field, 
		  cdmtable.unit_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
		where cdmtable.unit_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.unit_source_value) + count(distinct case when cdmtable.unit_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE
standardConceptFieldName = VISIT_CONCEPT_ID
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
		select distinct 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_VALUE' as violating_field, 
		  cdmtable.visit_source_value
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
		where cdmtable.visit_concept_id = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(distinct cdmtable.visit_source_value) + count(distinct case when cdmtable.visit_source_value is null then 1 end) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

