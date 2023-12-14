/*********
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.place_of_service_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.cdm_version_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.dqd_results
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.definition_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.dqd_results
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.subject_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.condition_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.condition_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.condition_status_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.condition_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.cost_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.cause_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.death_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.device_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.device_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.drug_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.route_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.episode_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.episode_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.episode_event_field_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.country_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.meas_event_field_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.measurement_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.measurement_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.operator_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.encoding_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.language_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.note_class_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.note_event_field_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.note_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.note_nlp_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.section_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.obs_event_field_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.observation_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.observation_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.qualifier_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.period_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.ethnicity_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.gender_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.race_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.modifier_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.procedure_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.procedure_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.gender_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.specialty_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.target_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.anatomic_site_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.disease_status_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.specimen_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.specimen_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_DETAIL.ADMITTED_FROM_CONCEPT_ID' as violating_field, 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.admitted_from_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.discharged_to_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.visit_detail_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.visit_detail_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.admitted_from_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.discharged_to_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.visit_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
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
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' as violating_field, 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	  	join booming-edge-403620.mimiciv_full_current_cdm.concept co 
	  	on cdmtable.visit_type_concept_id = co.concept_id
		where co.concept_id != 0 
			and (co.standard_concept != 'S' or co.invalid_reason is not null)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

