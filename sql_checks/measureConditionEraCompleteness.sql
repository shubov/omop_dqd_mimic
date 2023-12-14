/*********
Table Level:  
MEASURE_CONDITION_ERA_COMPLETENESS
Determine what #/% of persons have condition_era built successfully 
for persons in condition_occurrence table
Parameters used in this template:
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
		select distinct 
		co.person_id
		from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence co
		left join booming-edge-403620.mimiciv_full_current_cdm.condition_era cdmtable 
		on co.person_id = cdmtable.person_id
  	where cdmtable.person_id is null
	) violated_rows
) violated_row_count,
( 
	select 
		COUNT(distinct person_id) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.condition_occurrence co
) denominator
;

