/*********
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
plausibleTemporalAfterTableName = CDM_SOURCE
plausibleTemporalAfterFieldName = SOURCE_RELEASE_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CDM_SOURCE.CDM_RELEASE_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    where 
			IF(SAFE_CAST(cdmtable.source_release_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.source_release_date  AS STRING)),SAFE_CAST(cdmtable.source_release_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.cdm_release_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.cdm_release_date  AS STRING)),SAFE_CAST(cdmtable.cdm_release_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleTemporalAfterTableName = CONDITION_ERA
plausibleTemporalAfterFieldName = CONDITION_ERA_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_ERA.CONDITION_ERA_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    where 
			IF(SAFE_CAST(cdmtable.condition_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.condition_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_end_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_ERA.CONDITION_ERA_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.condition_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleTemporalAfterTableName = CONDITION_OCCURRENCE
plausibleTemporalAfterFieldName = CONDITION_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_OCCURRENCE.CONDITION_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.condition_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.condition_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_date  AS STRING)),SAFE_CAST(cdmtable.condition_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleTemporalAfterTableName = CONDITION_OCCURRENCE
plausibleTemporalAfterFieldName = CONDITION_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.condition_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.condition_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_OCCURRENCE.CONDITION_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.condition_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.condition_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_start_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEATH.DEATH_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.death_date  AS STRING)),SAFE_CAST(cdmtable.death_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEATH.DEATH_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.death_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.death_datetime  AS STRING)),SAFE_CAST(cdmtable.death_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleTemporalAfterTableName = DEVICE_EXPOSURE
plausibleTemporalAfterFieldName = DEVICE_EXPOSURE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where 
			IF(SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleTemporalAfterTableName = DEVICE_EXPOSURE
plausibleTemporalAfterFieldName = DEVICE_EXPOSURE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where 
			IF(SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DOSE_ERA.DOSE_ERA_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.dose_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.dose_era_end_date  AS STRING)),SAFE_CAST(cdmtable.dose_era_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DOSE_ERA.DOSE_ERA_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.dose_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.dose_era_start_date  AS STRING)),SAFE_CAST(cdmtable.dose_era_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleTemporalAfterTableName = DRUG_ERA
plausibleTemporalAfterFieldName = DRUG_ERA_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_ERA.DRUG_ERA_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    where 
			IF(SAFE_CAST(cdmtable.drug_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.drug_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_end_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_ERA.DRUG_ERA_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.drug_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where 
			IF(SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where 
			IF(SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_EXPOSURE.VERBATIM_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where 
			IF(SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.verbatim_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.verbatim_end_date  AS STRING)),SAFE_CAST(cdmtable.verbatim_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_END_DATE
plausibleTemporalAfterTableName = DRUG_STRENGTH
plausibleTemporalAfterFieldName = VALID_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'DRUG_STRENGTH.VALID_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
    where 
			IF(SAFE_CAST(cdmtable.valid_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.valid_start_date  AS STRING)),SAFE_CAST(cdmtable.valid_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.valid_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.valid_end_date  AS STRING)),SAFE_CAST(cdmtable.valid_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
plausibleTemporalAfterTableName = EPISODE
plausibleTemporalAfterFieldName = EPISODE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'EPISODE.EPISODE_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where 
			IF(SAFE_CAST(cdmtable.episode_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_date  AS STRING)),SAFE_CAST(cdmtable.episode_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.episode_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_date  AS STRING)),SAFE_CAST(cdmtable.episode_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
plausibleTemporalAfterTableName = EPISODE
plausibleTemporalAfterFieldName = EPISODE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'EPISODE.EPISODE_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where 
			IF(SAFE_CAST(cdmtable.episode_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.episode_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'EPISODE.EPISODE_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.episode_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_date  AS STRING)),SAFE_CAST(cdmtable.episode_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'EPISODE.EPISODE_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.episode_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_start_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'MEASUREMENT.MEASUREMENT_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.measurement_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.measurement_date  AS STRING)),SAFE_CAST(cdmtable.measurement_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'NOTE.NOTE_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.note_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.note_date  AS STRING)),SAFE_CAST(cdmtable.note_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'NOTE.NOTE_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.note_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.note_datetime  AS STRING)),SAFE_CAST(cdmtable.note_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'OBSERVATION.OBSERVATION_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.observation_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_date  AS STRING)),SAFE_CAST(cdmtable.observation_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'OBSERVATION.OBSERVATION_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.observation_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_datetime  AS STRING)),SAFE_CAST(cdmtable.observation_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleTemporalAfterTableName = OBSERVATION_PERIOD
plausibleTemporalAfterFieldName = OBSERVATION_PERIOD_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    where 
			IF(SAFE_CAST(cdmtable.observation_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_start_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.observation_period_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_end_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.observation_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_start_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
plausibleTemporalAfterTableName = PAYER_PLAN_PERIOD
plausibleTemporalAfterFieldName = PAYER_PLAN_PERIOD_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    where 
			IF(SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.payer_plan_period_start_date  AS STRING)),SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.payer_plan_period_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.payer_plan_period_end_date  AS STRING)),SAFE_CAST(cdmtable.payer_plan_period_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.payer_plan_period_start_date  AS STRING)),SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.procedure_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_date  AS STRING)),SAFE_CAST(cdmtable.procedure_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.procedure_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
plausibleTemporalAfterTableName = PROCEDURE_OCCURRENCE
plausibleTemporalAfterFieldName = PROCEDURE_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.procedure_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_date  AS STRING)),SAFE_CAST(cdmtable.procedure_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.procedure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_date  AS STRING)),SAFE_CAST(cdmtable.procedure_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
plausibleTemporalAfterTableName = PROCEDURE_OCCURRENCE
plausibleTemporalAfterFieldName = PROCEDURE_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.procedure_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_END_DATE
plausibleTemporalAfterTableName = SOURCE_TO_CONCEPT_MAP
plausibleTemporalAfterFieldName = VALID_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'SOURCE_TO_CONCEPT_MAP.VALID_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.source_to_concept_map cdmtable
    where 
			IF(SAFE_CAST(cdmtable.valid_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.valid_start_date  AS STRING)),SAFE_CAST(cdmtable.valid_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.valid_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.valid_end_date  AS STRING)),SAFE_CAST(cdmtable.valid_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'SPECIMEN.SPECIMEN_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.specimen_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.specimen_date  AS STRING)),SAFE_CAST(cdmtable.specimen_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'SPECIMEN.SPECIMEN_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.specimen_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.specimen_datetime  AS STRING)),SAFE_CAST(cdmtable.specimen_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleTemporalAfterTableName = VISIT_DETAIL
plausibleTemporalAfterFieldName = VISIT_DETAIL_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_DETAIL.VISIT_DETAIL_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where 
			IF(SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleTemporalAfterTableName = VISIT_DETAIL
plausibleTemporalAfterFieldName = VISIT_DETAIL_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where 
			IF(SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_DETAIL.VISIT_DETAIL_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleTemporalAfterTableName = VISIT_OCCURRENCE
plausibleTemporalAfterFieldName = VISIT_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_OCCURRENCE.VISIT_END_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_start_date  AS DATE))
		 > IF(SAFE_CAST(cdmtable.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_end_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleTemporalAfterTableName = VISIT_OCCURRENCE
plausibleTemporalAfterFieldName = VISIT_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_OCCURRENCE.VISIT_END_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where 
			IF(SAFE_CAST(cdmtable.visit_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_start_datetime  AS DATE))
		 > IF(SAFE_CAST(cdmtable.visit_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_end_datetime  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_OCCURRENCE.VISIT_START_DATE' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_start_date  AS DATE))
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
  	denominator.num_rows as num_denominator_rows
from
(
	select 
		COUNT(violated_rows.violating_field) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			'VISIT_OCCURRENCE.VISIT_START_DATETIME' as violating_field, 
			cdmtable.*
    	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
				join booming-edge-403620.mimiciv_full_current_cdm.person plausibletable on cdmtable.person_id = plausibletable.person_id
    where 
			coalesce(
				IF(SAFE_CAST(plausibletable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(plausibletable.birth_datetime  AS STRING)),SAFE_CAST(plausibletable.birth_datetime  AS DATE)),
				parse_date('%Y%m%d', concat(plausibletable.year_of_birth,'-06-01'))
			) 
		 > IF(SAFE_CAST(cdmtable.visit_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_start_datetime  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
) denominator
;

