/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.observation_period cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.visit_occurrence cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.visit_detail cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.drug_exposure cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.procedure_occurrence cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.device_exposure cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.measurement cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.observation cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.death cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.note cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.specimen cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.payer_plan_period cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.drug_era cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.dose_era cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
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
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
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
		COUNT(violated_rows.person_id) as num_violated_rows
	from
	(
		/*violatedRowsBegin*/
		select 
			cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
			left join booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable2 
			on cdmtable.person_id = cdmtable2.person_id
		where cdmtable2.person_id is null
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
		COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.person cdmtable
) denominator
;

