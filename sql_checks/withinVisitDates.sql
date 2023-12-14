/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.condition_start_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.condition_start_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.device_exposure_start_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.device_exposure_start_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.drug_exposure_start_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.drug_exposure_start_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.measurement_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.measurement_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.note_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.note_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.note cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.observation_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.observation_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.procedure_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.procedure_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.visit_detail_end_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.visit_detail_end_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
**********/
select num_violated_rows,
  case
    when denominator.num_rows = 0 then 0 
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
      join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
      on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
    where cdmtable.visit_detail_start_date < DATE_ADD(IF(SAFE_CAST(vo.visit_start_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_start_date  AS STRING)),SAFE_CAST(vo.visit_start_date  AS DATE)), INTERVAL -7 DAY)
      or cdmtable.visit_detail_start_date > DATE_ADD(IF(SAFE_CAST(vo.visit_end_date  AS DATE) IS NULL,PARSE_DATE('%Y%m%d', cast(vo.visit_end_date  AS STRING)),SAFE_CAST(vo.visit_end_date  AS DATE)), INTERVAL 7 DAY)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable
    join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence vo
    on cdmtable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

