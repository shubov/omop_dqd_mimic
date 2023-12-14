/*********
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.care_site_id in ( 
			  select care_site_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.care_site
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.condition_era_id in ( 
			  select condition_era_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.condition_era
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.condition_occurrence_id in ( 
			  select condition_occurrence_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.cost_id in ( 
			  select cost_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.cost
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.device_exposure_id in ( 
			  select device_exposure_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.device_exposure
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.dose_era_id in ( 
			  select dose_era_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.dose_era
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.drug_era_id in ( 
			  select drug_era_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.drug_era
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.drug_exposure_id in ( 
			  select drug_exposure_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'EPISODE.EPISODE_ID' as violating_field, 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
		where cdmtable.episode_id in ( 
			  select episode_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.episode
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.location_id in ( 
			  select location_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.location
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.measurement_id in ( 
			  select measurement_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.measurement
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.metadata_id in ( 
			  select metadata_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.metadata
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.note_id in ( 
			  select note_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.note
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.note_nlp_id in ( 
			  select note_nlp_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.note_nlp
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.observation_id in ( 
			  select observation_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.observation
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.observation_period_id in ( 
			  select observation_period_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.observation_period
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.payer_plan_period_id in ( 
			  select payer_plan_period_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.person_id in ( 
			  select person_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.person
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.procedure_occurrence_id in ( 
			  select procedure_occurrence_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.provider_id in ( 
			  select provider_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.provider
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.specimen_id in ( 
			  select specimen_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.specimen
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.visit_detail_id in ( 
			  select visit_detail_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.visit_detail
			  group by  1 having COUNT(*) > 1 
		 )
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
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
		where cdmtable.visit_occurrence_id in ( 
			  select visit_occurrence_id 
		    from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence
			  group by  1 having COUNT(*) > 1 
		 )
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

