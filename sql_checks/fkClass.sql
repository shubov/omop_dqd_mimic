/*********
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
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
      and (co.concept_class_id != 'Ingredient') 
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
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
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
      and (co.concept_class_id != 'Ingredient') 
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
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
schema = booming-edge-403620.mimiciv_full_current_cdm
vocabDatabaseSchema = booming-edge-403620.mimiciv_full_current_cdm
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
fkClass = Ingredient
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
		  'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' as violating_field, 
		  cdmtable.* 
		from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
		  left join booming-edge-403620.mimiciv_full_current_cdm.concept co
		  on cdmtable.ingredient_concept_id = co.concept_id
    where co.concept_id != 0 
      and (co.concept_class_id != 'Ingredient') 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	select 
	  COUNT(*) as num_rows
	from booming-edge-403620.mimiciv_full_current_cdm.drug_strength cdmtable
) denominator
;

