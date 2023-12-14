/*********
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID
fkDomain = Metadata
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.cdm_version_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Metadata')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
fkDomain = Condition
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.condition_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Condition')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
fkDomain = Condition
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.condition_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Condition')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
fkDomain = Condition Status
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.condition_status_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Condition Status')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.condition_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.death_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
fkDomain = Device
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.device_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Device')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.device_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Unit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Drug')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Unit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Drug')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Drug')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
fkDomain = Route
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.route_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Route')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.drug_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Drug')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID
fkDomain = Episode
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.episode_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Episode')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID
fkDomain = Procedure OR Regimen
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.episode_object_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Procedure OR Regimen')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.episode_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID
fkDomain = Metadata
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.episode_event_field_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Metadata')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID
fkDomain = Geography
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.country_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Geography')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
fkDomain = Measurement
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.measurement_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Measurement')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.measurement_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
fkDomain = Meas Value Operator
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
		  'MEASUREMENT.OPERATOR_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.operator_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Meas Value Operator')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Unit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
fkDomain = Meas Value
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
		  'MEASUREMENT.VALUE_AS_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.value_as_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Meas Value')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.note_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.observation_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.unit_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Unit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.period_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
fkDomain = Ethnicity
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.ethnicity_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Ethnicity')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
fkDomain = Gender
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.gender_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Gender')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
fkDomain = Race
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.race_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Race')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
fkDomain = Procedure
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.procedure_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Procedure')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.procedure_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
fkDomain = Gender
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.gender_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Gender')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.specimen_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.admitted_from_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.discharged_to_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.visit_detail_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.visit_detail_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.admitted_from_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.discharged_to_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
fkDomain = Visit
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.visit_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Visit')
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
FIELD_FK_DOMAIN
all standard concept ids are part of specified domain
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
fkDomain = Type Concept
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
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.visit_type_concept_id = co.concept_id
		where co.concept_id != 0 
		  and co.domain_id not in ('Type Concept')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

