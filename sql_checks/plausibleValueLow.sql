/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
plausibleValueLow = '20000101'
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
		  'CDM_SOURCE.CDM_RELEASE_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    where IF(SAFE_CAST(cdmtable.cdm_release_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.cdm_release_date  AS STRING)),SAFE_CAST(cdmtable.cdm_release_date  AS DATE)) < IF(SAFE_CAST('20000101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('20000101'  AS STRING)),SAFE_CAST('20000101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
	where cdm_release_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE
plausibleValueLow = '20000101'
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
		  'CDM_SOURCE.SOURCE_RELEASE_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
    where IF(SAFE_CAST(cdmtable.source_release_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.source_release_date  AS STRING)),SAFE_CAST(cdmtable.source_release_date  AS DATE)) < IF(SAFE_CAST('20000101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('20000101'  AS STRING)),SAFE_CAST('20000101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.cdm_source cdmtable
	where source_release_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE
plausibleValueLow = '19500101'
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
		  'COHORT.COHORT_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.dqd_results.cohort cdmtable
    where IF(SAFE_CAST(cdmtable.cohort_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.cohort_end_date  AS STRING)),SAFE_CAST(cdmtable.cohort_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
	where cohort_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.dqd_results
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE
plausibleValueLow = '19500101'
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
		  'COHORT.COHORT_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.dqd_results.cohort cdmtable
    where IF(SAFE_CAST(cdmtable.cohort_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.cohort_start_date  AS STRING)),SAFE_CAST(cdmtable.cohort_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.dqd_results.cohort cdmtable
	where cohort_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleValueLow = '19500101'
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
		  'CONDITION_ERA.CONDITION_ERA_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    where IF(SAFE_CAST(cdmtable.condition_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_end_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
	where condition_era_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleValueLow = '19500101'
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
		  'CONDITION_ERA.CONDITION_ERA_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    where IF(SAFE_CAST(cdmtable.condition_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_era_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_era_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
	where condition_era_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
plausibleValueLow = 1
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
		  'CONDITION_ERA.CONDITION_OCCURRENCE_COUNT' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
    where cdmtable.condition_occurrence_count < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable
	where condition_occurrence_count is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleValueLow = '19500101'
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
		  'CONDITION_OCCURRENCE.CONDITION_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.condition_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_date  AS STRING)),SAFE_CAST(cdmtable.condition_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where condition_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleValueLow = '19500101'
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
		  'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.condition_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_end_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where condition_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleValueLow = '19500101'
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
		  'CONDITION_OCCURRENCE.CONDITION_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.condition_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_date  AS STRING)),SAFE_CAST(cdmtable.condition_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where condition_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleValueLow = '19500101'
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
		  'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.condition_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.condition_start_datetime  AS STRING)),SAFE_CAST(cdmtable.condition_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
	where condition_start_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
plausibleValueLow = '19500101'
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
		  'DEATH.DEATH_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    where IF(SAFE_CAST(cdmtable.death_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.death_date  AS STRING)),SAFE_CAST(cdmtable.death_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
	where death_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
plausibleValueLow = '19500101'
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
		  'DEATH.DEATH_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
    where IF(SAFE_CAST(cdmtable.death_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.death_datetime  AS STRING)),SAFE_CAST(cdmtable.death_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.death cdmtable
	where death_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleValueLow = '19500101'
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where device_exposure_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleValueLow = '19500101'
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where device_exposure_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleValueLow = '19500101'
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where device_exposure_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleValueLow = '19500101'
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.device_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.device_exposure_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where device_exposure_start_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueLow = 1
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
		  'DEVICE_EXPOSURE.QUANTITY' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    where cdmtable.quantity < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
	where quantity is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleValueLow = '19500101'
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
		  'DOSE_ERA.DOSE_ERA_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    where IF(SAFE_CAST(cdmtable.dose_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.dose_era_end_date  AS STRING)),SAFE_CAST(cdmtable.dose_era_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
	where dose_era_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleValueLow = '19500101'
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
		  'DOSE_ERA.DOSE_ERA_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    where IF(SAFE_CAST(cdmtable.dose_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.dose_era_start_date  AS STRING)),SAFE_CAST(cdmtable.dose_era_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
	where dose_era_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
plausibleValueLow = 0
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
		  'DOSE_ERA.DOSE_VALUE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
    where cdmtable.dose_value < 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable
	where dose_value is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleValueLow = '19500101'
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
		  'DRUG_ERA.DRUG_ERA_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    where IF(SAFE_CAST(cdmtable.drug_era_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_end_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
	where drug_era_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleValueLow = '19500101'
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
		  'DRUG_ERA.DRUG_ERA_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    where IF(SAFE_CAST(cdmtable.drug_era_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_era_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_era_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
	where drug_era_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
plausibleValueLow = 1
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
		  'DRUG_ERA.DRUG_EXPOSURE_COUNT' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    where cdmtable.drug_exposure_count < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
	where drug_exposure_count is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
plausibleValueLow = 0
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
		  'DRUG_ERA.GAP_DAYS' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
    where cdmtable.gap_days < 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable
	where gap_days is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
plausibleValueLow = 0
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
		  'DRUG_EXPOSURE.DAYS_SUPPLY' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where cdmtable.days_supply < 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where days_supply is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleValueLow = '19500101'
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where drug_exposure_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleValueLow = '19500101'
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where drug_exposure_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleValueLow = '19500101'
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_date  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where drug_exposure_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleValueLow = '19500101'
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.drug_exposure_start_datetime  AS STRING)),SAFE_CAST(cdmtable.drug_exposure_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where drug_exposure_start_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueLow = 0
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
		  'DRUG_EXPOSURE.QUANTITY' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where cdmtable.quantity < 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where quantity is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
plausibleValueLow = 0
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
		  'DRUG_EXPOSURE.REFILLS' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where cdmtable.refills < 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where refills is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleValueLow = '19500101'
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
		  'DRUG_EXPOSURE.VERBATIM_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    where IF(SAFE_CAST(cdmtable.verbatim_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.verbatim_end_date  AS STRING)),SAFE_CAST(cdmtable.verbatim_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
	where verbatim_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
plausibleValueLow = '19500101'
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
		  'EPISODE.EPISODE_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where IF(SAFE_CAST(cdmtable.episode_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_date  AS STRING)),SAFE_CAST(cdmtable.episode_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where episode_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
plausibleValueLow = '19500101'
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
		  'EPISODE.EPISODE_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where IF(SAFE_CAST(cdmtable.episode_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_end_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where episode_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
plausibleValueLow = '19500101'
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
		  'EPISODE.EPISODE_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where IF(SAFE_CAST(cdmtable.episode_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_date  AS STRING)),SAFE_CAST(cdmtable.episode_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where episode_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
plausibleValueLow = '19500101'
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
		  'EPISODE.EPISODE_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
    where IF(SAFE_CAST(cdmtable.episode_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.episode_start_datetime  AS STRING)),SAFE_CAST(cdmtable.episode_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.episode cdmtable
	where episode_start_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleValueLow = '19500101'
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
		  'MEASUREMENT.MEASUREMENT_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    where IF(SAFE_CAST(cdmtable.measurement_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.measurement_date  AS STRING)),SAFE_CAST(cdmtable.measurement_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
	where measurement_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME
plausibleValueLow = '19500101'
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
		  'MEASUREMENT.MEASUREMENT_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    where IF(SAFE_CAST(cdmtable.measurement_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.measurement_datetime  AS STRING)),SAFE_CAST(cdmtable.measurement_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
	where measurement_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleValueLow = '19500101'
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
		  'NOTE.NOTE_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    where IF(SAFE_CAST(cdmtable.note_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.note_date  AS STRING)),SAFE_CAST(cdmtable.note_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
	where note_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleValueLow = '19500101'
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
		  'NOTE.NOTE_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    where IF(SAFE_CAST(cdmtable.note_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.note_datetime  AS STRING)),SAFE_CAST(cdmtable.note_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
	where note_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
plausibleValueLow = '19500101'
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
		  'NOTE_NLP.NLP_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
    where IF(SAFE_CAST(cdmtable.nlp_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.nlp_datetime  AS STRING)),SAFE_CAST(cdmtable.nlp_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note_nlp cdmtable
	where nlp_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleValueLow = '19500101'
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
		  'OBSERVATION.OBSERVATION_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    where IF(SAFE_CAST(cdmtable.observation_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_date  AS STRING)),SAFE_CAST(cdmtable.observation_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
	where observation_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleValueLow = '19500101'
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
		  'OBSERVATION.OBSERVATION_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    where IF(SAFE_CAST(cdmtable.observation_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_datetime  AS STRING)),SAFE_CAST(cdmtable.observation_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
	where observation_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleValueLow = '19500101'
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
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    where IF(SAFE_CAST(cdmtable.observation_period_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_end_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
	where observation_period_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleValueLow = '19500101'
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
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
    where IF(SAFE_CAST(cdmtable.observation_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.observation_period_start_date  AS STRING)),SAFE_CAST(cdmtable.observation_period_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable
	where observation_period_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
plausibleValueLow = '19500101'
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
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    where IF(SAFE_CAST(cdmtable.payer_plan_period_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.payer_plan_period_end_date  AS STRING)),SAFE_CAST(cdmtable.payer_plan_period_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
	where payer_plan_period_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
plausibleValueLow = '19500101'
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
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
    where IF(SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.payer_plan_period_start_date  AS STRING)),SAFE_CAST(cdmtable.payer_plan_period_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable
	where payer_plan_period_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME
plausibleValueLow = '18500101'
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
		  'PERSON.BIRTH_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    where IF(SAFE_CAST(cdmtable.birth_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.birth_datetime  AS STRING)),SAFE_CAST(cdmtable.birth_datetime  AS DATE)) < IF(SAFE_CAST('18500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('18500101'  AS STRING)),SAFE_CAST('18500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
	where birth_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
plausibleValueLow = 1
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
		  'PERSON.DAY_OF_BIRTH' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    where cdmtable.day_of_birth < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
	where day_of_birth is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
plausibleValueLow = 1
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
		  'PERSON.MONTH_OF_BIRTH' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    where cdmtable.month_of_birth < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
	where month_of_birth is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
plausibleValueLow = 1850
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
		  'PERSON.YEAR_OF_BIRTH' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
    where cdmtable.year_of_birth < 1850
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
	where year_of_birth is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleValueLow = '19500101'
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.procedure_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_date  AS STRING)),SAFE_CAST(cdmtable.procedure_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where procedure_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleValueLow = '19500101'
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.procedure_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where procedure_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
plausibleValueLow = '19500101'
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.procedure_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_date  AS STRING)),SAFE_CAST(cdmtable.procedure_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where procedure_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
plausibleValueLow = '19500101'
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.procedure_end_datetime  AS STRING)),SAFE_CAST(cdmtable.procedure_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where procedure_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
plausibleValueLow = 1
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
		  'PROCEDURE_OCCURRENCE.QUANTITY' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    where cdmtable.quantity < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
	where quantity is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = QUANTITY
plausibleValueLow = 1
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
		  'SPECIMEN.QUANTITY' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    where cdmtable.quantity < 1
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
	where quantity is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleValueLow = '19500101'
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
		  'SPECIMEN.SPECIMEN_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    where IF(SAFE_CAST(cdmtable.specimen_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.specimen_date  AS STRING)),SAFE_CAST(cdmtable.specimen_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
	where specimen_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleValueLow = '19500101'
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
		  'SPECIMEN.SPECIMEN_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
    where IF(SAFE_CAST(cdmtable.specimen_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.specimen_datetime  AS STRING)),SAFE_CAST(cdmtable.specimen_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable
	where specimen_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleValueLow = '19500101'
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
		  'VISIT_DETAIL.VISIT_DETAIL_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where IF(SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where visit_detail_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleValueLow = '19500101'
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
		  'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where IF(SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where visit_detail_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleValueLow = '19500101'
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
		  'VISIT_DETAIL.VISIT_DETAIL_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where IF(SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where visit_detail_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleValueLow = '19500101'
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
		  'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    where IF(SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_detail_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_detail_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
	where visit_detail_start_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleValueLow = '19500101'
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
		  'VISIT_OCCURRENCE.VISIT_END_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_date  AS STRING)),SAFE_CAST(cdmtable.visit_end_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where visit_end_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleValueLow = '19500101'
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
		  'VISIT_OCCURRENCE.VISIT_END_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.visit_end_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_end_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_end_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where visit_end_datetime is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleValueLow = '19500101'
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
		  'VISIT_OCCURRENCE.VISIT_START_DATE' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_date  AS STRING)),SAFE_CAST(cdmtable.visit_start_date  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where visit_start_date is not null
) denominator
;

/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleValueLow = '19500101'
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
		  'VISIT_OCCURRENCE.VISIT_START_DATETIME' as violating_field, 
		  cdmtable.*
		from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
    where IF(SAFE_CAST(cdmtable.visit_start_datetime  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(cdmtable.visit_start_datetime  AS STRING)),SAFE_CAST(cdmtable.visit_start_datetime  AS DATE)) < IF(SAFE_CAST('19500101'  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast('19500101'  AS STRING)),SAFE_CAST('19500101'  AS DATE))
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable
	where visit_start_datetime is not null
) denominator
;

