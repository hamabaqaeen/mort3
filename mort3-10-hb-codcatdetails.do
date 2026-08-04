*-----------------------------------------------------------------
* Cuases of death in more details within each category*
*-----------------------------------------------------------------

// This section looks into respiratory deaths (codcat==8) to identify the most common specific causes of death and their ICD version within this category// 

* count how many respiratory deaths (codcar==8) fall under each raw ucause code
tab ucause if codcat==8

* same as above, but sorted from most to least frequent 
tab ucause if codcat==8, sort

* check the split of ICD versions among respiratory deaths
tab icdver if codcat==8

* This combines ucause code abd ICD version into one variable so they can be tabulated together, then creates the table with frequencies sorted most to least common, then removed the temorary combined variable to keep data unchanged
gen code_icd = ucause + " (ICD-" + string(icdver) + ")"
tab code_icd if codcat==8, sort
drop code_icd



// This section looks into external deaths (codcat==14) to identify the most common specific causes of death and their ICD version within this category//

tab ucause if codcat==14, sort

gen code_icd = ucause + " (ICD-" + string(icdver) + ")"
tab code_icd if codcat==14, sort
drop code_icd


// This section looks into digestive causes of deaths (codcat==9) to identify the most common specific causes of death and their ICD version within this category//

tab ucause if codcat==9, sort

gen code_icd = ucause + " (ICD-" + string(icdver) + ")"
tab code_icd if codcat==9, sort
drop code_icd
  