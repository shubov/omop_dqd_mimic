/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.condition_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.condition_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_date  AS STRING)),SAFE_CAST(cdmtable.condition_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.condition_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.condition_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.condition_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.dose_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.dose_era_start_date  AS STRING)),SAFE_CAST(cdmtable.dose_era_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.drug_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.verbatim_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.verbatim_end_date  AS STRING)),SAFE_CAST(cdmtable.verbatim_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.episode_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_date  AS STRING)),SAFE_CAST(cdmtable.episode_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.episode_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.episode_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_date  AS STRING)),SAFE_CAST(cdmtable.episode_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.episode_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.observation_period_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_end_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.observation_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_start_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.procedure_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_date  AS STRING)),SAFE_CAST(cdmtable.procedure_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.procedure_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.procedure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_date  AS STRING)),SAFE_CAST(cdmtable.procedure_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_end_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_end_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_start_date  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
**********/
select 
	num_violated_rows, 
	case 
		when denominator.num_rows = 0 then 0 
		else 1.0*num_violated_rows/denominator.num_rows 
	end as pct_violated_rows, 
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
    	join booming-edge-403620.mimiciv_full_current_cdm.death de on cdmtable.person_id = de.person_id
    	where IF(SAFE_CAST(cdmtable.visit_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_start_datetime  AS DATE)) > DATE_ADD(IF(SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS STRING)),SAFE_CAST(IF(SAFE_CAST(de.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(de.death_date  AS STRING)),SAFE_CAST(de.death_date  AS DATE))  AS DATE)), INTERVAL 60 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where person_id in
		(select 
			person_id 
		from booming-edge-403620.mimiciv_full_current_cdm.death)
) denominator
;

