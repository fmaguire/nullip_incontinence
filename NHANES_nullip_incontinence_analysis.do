*****************************************************************************************************
**     Exploratory Analysis: NHANES Nulliparous Incontinence                                       
**               2014-2018
**                                                                                           
** N Kupfer V Minassian A Clancy J Stairs
**                                 
******************************************************************************************************


** Log File Creation **

clear
log using "NHANES/Nullip Incontinence complete case analysis 21_5_2022.smcl", replace


** Display Stata Version Number **
version

********************************************************************************
********************************************************************************
******* 			DEFINE VARIABLES           					****************
********************************************************************************
********************************************************************************

********************************************************************************
********			2017-18 NHANES										********
********************************************************************************

*****Import and Pare Variables ******
import sasxport5 "NHANES/2017-18/DEMO_J.XPT"
keep seqn riagendr ridageyr ridreth1 ridreth3 dmdeduc2 wtmec2yr wtint2yr indhhin2 sdmvstra sdmvpsu 
save "NHANES/2017-18/demo1718", replace

clear
import sasxport5 "NHANES/2017-18/KIQ_U_J.XPT"
count
keep seqn kiq005 kiq010 kiq042 kiq430 kiq044 kiq450 kiq046 kiq470 kiq050 kiq052 kiq480
save "NHANES/2017-18/incontinence1718", replace

clear
import sasxport5 "NHANES/2017-18/MCQ_J.XPT"
keep seqn mcq010 mcq035 mcq053  mcq160m mcq170m mcq160g mcq160k mcq170k mcq160o
save "NHANES/2017-18/medicalcomorb1718", replace

clear
import sasxport5 "NHANES/2017-18/PAQ_J.XPT"
keep seqn paq650 pad660 paq665 pad675
save "NHANES/2017-18/physact1718", replace

clear
import sasxport5 "NHANES/2017-18/RHQ_J.XPT"
keep seqn rhq131 rhd280
save "NHANES/2017-18/repro1718", replace

clear
import sasxport5 "NHANES/2017-18/BMX_J.XPT"
keep seqn bmxbmi
save "NHANES/2017-18/bmi1718", replace

clear
import sasxport5 "NHANES/2017-18/BPQ_J.XPT"
keep seqn bpq040a bpq020
save "NHANES/2017-18/bp1718", replace

clear
import sasxport5 "NHANES/2017-18/DIQ_J.XPT"
keep seqn diq010
save "NHANES/2017-18/dm1718", replace

clear
import sasxport5 "NHANES/2017-18/SMQ_J.XPT"
keep seqn smq020 smq040
save "NHANES/2017-18/smoking1718", replace


**** Merge Files *******
merge 1:1 seqn using "NHANES/2017-18/demo1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/incontinence1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/medicalcomorb1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/physact1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/repro1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/bmi1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/bp1718"

drop _merge
merge 1:1 seqn using "NHANES/2017-18/dm1718"

drop _merge

save "NHANES/2017-18/rawdata1718", replace


********************************************************************************
********			2015-16 NHANES										********
********************************************************************************

*****Import and Pare Variables ******
import sasxport5 "NHANES/2015-16/DEMO_I.XPT"
keep seqn riagendr ridageyr ridreth1 ridreth3 dmdeduc2 wtmec2yr wtint2yr indhhin2 sdmvstra sdmvpsu 
save "NHANES/2015-16/demo1516", replace

clear
import sasxport5 "NHANES/2015-16/KIQ_U_I.XPT"
count
keep seqn kiq005 kiq010 kiq042 kiq430 kiq044 kiq450 kiq046 kiq470 kiq050 kiq052 kiq480
save "NHANES/2015-16/incontinence1516", replace

clear
import sasxport5 "NHANES/2015-16/MCQ_I.XPT"
keep seqn mcq010 mcq035 mcq053  mcq160m mcq170m mcq160g mcq160k mcq170k mcq160o
save "NHANES/2015-16/medicalcomorb1516", replace

clear
import sasxport5 "NHANES/2015-16/PAQ_I.XPT"
keep seqn paq650 pad660 paq665 pad675
save "NHANES/2015-16/physact1516", replace

clear
import sasxport5 "NHANES/2015-16/RHQ_I.XPT"
keep seqn rhq131 rhd280
save "NHANES/2015-16/repro1516", replace

clear
import sasxport5 "NHANES/2015-16/BMX_I.XPT"
keep seqn bmxbmi
save "NHANES/2015-16/bmi1516", replace

clear
import sasxport5 "NHANES/2015-16/BPQ_I.XPT"
keep seqn bpq040a bpq020
save "NHANES/2015-16/bp1516", replace

clear
import sasxport5 "NHANES/2015-16/DIQ_I.XPT"
keep seqn diq010
save "NHANES/2015-16/dm1516", replace

clear
import sasxport5 "NHANES/2015-16/SMQ_I.XPT"
keep seqn smq020 smq040
save "NHANES/2015-16/smoking1516", replace

**** Merge Files *******
merge 1:1 seqn using "NHANES/2015-16/demo1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/incontinence1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/medicalcomorb1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/physact1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/repro1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/bmi1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/bp1516"

drop _merge
merge 1:1 seqn using "NHANES/2015-16/dm1516"

drop _merge

save "NHANES/2015-16/rawdata1516", replace

********************************************************************************
********			2013-14 NHANES										********
********************************************************************************

*****Import and Pare Variables ******
import sasxport5 "NHANES/2013-14/DEMO_H.XPT"
keep seqn riagendr ridageyr ridreth1 ridreth3 dmdeduc2 wtmec2yr wtint2yr indhhin2 sdmvstra sdmvpsu 
save "NHANES/2013-14/demo1314", replace

clear
import sasxport5 "NHANES/2013-14/KIQ_U_H.XPT"
count
keep seqn kiq005 kiq010 kiq042 kiq430 kiq044 kiq450 kiq046 kiq470 kiq050 kiq052 kiq480
save "NHANES/2013-14/incontinence1314", replace

clear
import sasxport5 "NHANES/2013-14/MCQ_H.XPT"
keep seqn mcq010 mcq035 mcq053  mcq160m mcq170m mcq160g mcq160k mcq170k mcq160o
save "NHANES/2013-14/medicalcomorb1314", replace

clear
import sasxport5 "NHANES/2013-14/PAQ_H.XPT"
keep seqn paq650 pad660 paq665 pad675
save "NHANES/2013-14/physact1314", replace

clear
import sasxport5 "NHANES/2013-14/RHQ_H.XPT"
keep seqn rhq131 rhd280
save "NHANES/2013-14/repro1314", replace

clear
import sasxport5 "NHANES/2013-14/BMX_H.XPT"
keep seqn bmxbmi
save "NHANES/2013-14/bmi1314", replace

clear
import sasxport5 "NHANES/2013-14/BPQ_H.XPT"
keep seqn bpq040a bpq020
save "NHANES/2013-14/bp1314", replace

clear
import sasxport5 "NHANES/2013-14/DIQ_H.XPT"
keep seqn diq010
save "NHANES/2013-14/dm1314", replace

clear
import sasxport5 "NHANES/2013-14/SMQ_H.XPT"
keep seqn smq020 smq040
save "NHANES/2013-14/smoking1314", replace

**** Merge Files *******
merge 1:1 seqn using "NHANES/2013-14/demo1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/incontinence1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/medicalcomorb1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/physact1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/repro1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/bmi1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/bp1314"

drop _merge
merge 1:1 seqn using "NHANES/2013-14/dm1314"

drop _merge

save "NHANES/2013-14/rawdata1314", replace

********************************************************************************
********			2011-12 NHANES										********
********************************************************************************

*****Import and Pare Variables ******
import sasxport5 "NHANES/2011-12/DEMO_G.XPT"
keep seqn riagendr ridageyr ridreth1 ridreth3 dmdeduc2 wtmec2yr wtint2yr indhhin2 sdmvstra sdmvpsu 
save "NHANES/2011-12/demo1112", replace

clear
import sasxport5 "NHANES/2011-12/KIQ_U_G.XPT"
count 
keep seqn kiq005 kiq010 kiq042 kiq430 kiq044 kiq450 kiq046 kiq470 kiq050 kiq052 kiq480
save "NHANES/2011-12/incontinence1112", replace

clear
import sasxport5 "NHANES/2011-12/MCQ_G.XPT"
keep seqn mcq010 mcq035 mcq053  mcq160m mcq170m mcq160g mcq160k mcq170k 
save "NHANES/2011-12/medicalcomorb1112", replace

clear
import sasxport5 "NHANES/2011-12/PAQ_G.XPT"
keep seqn paq650 pad660 paq665 pad675
save "NHANES/2011-12/physact1112", replace

clear
import sasxport5 "NHANES/2011-12/RHQ_G.XPT"
keep seqn rhq131 rhd280
save "NHANES/2011-12/repro1112", replace

clear
import sasxport5 "NHANES/2011-12/BMX_G.XPT"
keep seqn bmxbmi
save "NHANES/2011-12/bmi1112", replace

clear
import sasxport5 "NHANES/2011-12/BPQ_G.XPT"
keep seqn bpq040a bpq020
save "NHANES/2011-12/bp1112", replace

clear
import sasxport5 "NHANES/2011-12/DIQ_G.XPT"
keep seqn diq010
save "NHANES/2011-12/dm1112", replace

clear
import sasxport5 "NHANES/2011-12/SMQ_G.XPT"
keep seqn smq020 smq040
save "NHANES/2011-12/smoking1112", replace

**** Merge Files *******
merge 1:1 seqn using "NHANES/2011-12/demo1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/incontinence1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/medicalcomorb1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/physact1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/repro1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/bmi1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/bp1112"

drop _merge
merge 1:1 seqn using "NHANES/2011-12/dm1112"

drop _merge

save "NHANES/2011-12/rawdata1112", replace



********************************************************************************
********			Append Datasets										********
********************************************************************************

use "NHANES/2013-14/rawdata1314"

append using "NHANES/2015-16/rawdata1516", nolab

append using "NHANES/2017-18/rawdata1718", nolab

append using "NHANES/2011-12/rawdata1112", nolab

save "NHANES/rawdatamerged", replace

********************************************************************************
********			Define Variables									********
********************************************************************************

use "NHANES/rawdatamerged"

**Pool (females who responded to urinary leakage)
generate pool=0
replace pool=1 if riagendr==2 & kiq005>=1 & kiq005<=5

tab pool

** Sample**
*Define Nulliparous
gen nullip=0
replace nullip=1 if rhq131==2
replace nullip=. if rhq131==7 | rhq131==9

label variable nullip "Nulliparous (0 = No, 1 = Yes)"
label values nullip yes_no

tab nullip, miss

*age (continuous, use as is)
rename ridageyr age

summarize age

gen agebin=0
replace agebin=1 if age>=45
replace agebin=. if age==.
label variable agebin "Age 45 and Over (0 = No, 1 = Yes)"
label values agebin yes_no

tab agebin, miss

gen agecat=0
replace agecat=1 if age>=20 & age<30
replace agecat=2 if age>=30 &age <40
replace agecat=3 if age>=40 &age <50
replace agecat=4 if age>=50 &age <60
replace agecat=5 if age>=60 &age <70
replace agecat=6 if age>=70 &age <80
replace agecat=7 if age>=80
replace agecat=. if age==.

*gender (binary, use as is NB: female=2)
rename riagendr gender 

tab gender, miss

*study inclusion
generate studysample=0
replace studysample=1 if nullip==1 & gender==2

tab studysample

summarize age if studysample==1

**Demographic Covariates

*race (NB: this includes Asian, need to make sure that previous years do this, otherwise use ridreth1)
rename ridreth3 race
label variable race "Race (1=Mexican American 2=Other Hispanic 3=Non-Hispanic White 4=Non-Hispanic Black 6=Non-Hispanic Asian 7=Other including Multi-Racial)"
label define race_label 1 "1 Mexican American" 2 "2 Other Hispanic" 3 "3 Non-Hispanic White" 4 "4 Non-Hispanic Black" 6 "6 Non-Hispanic Asian" 7 "7Other including Multi-Racial"
label values race race_label

tab race, miss

*education level 
rename dmdeduc2 education
label variable education "Education (1=Less than 9th Grade 2=9th-11th Grade 3=High School 4=Some College 5=College Graduate)"
label define education_label 1 "1 Less than 9th Grade" 2 "2 9th-11th Grade" 3 "3 High School" 4 "4 Some College" 5 "5 College Graduate"
replace education=. if education==7 | education==9
label values education education_label

generate educationslim=0
replace educationslim=1 if education==1 | education==2 
replace educationslim=2 if education==3
replace educationslim=3 if education==4 | education==5
replace educationslim=. if education==.

label variable educationslim "Education Slim Categories (1=Less than High School 2=High School 3=College)"
label define educationslim_label 1 "1 Less than High School" 2 "2 High School" 3 "3 College" 
label values educationslim educationslim_label

tab educationslim, miss

*Income (2017 US Census Bureau Quintiles (<16,621, up to 33,551, up to 60,032, up to 92,350, ip to 145,380))
generate incomequintile=0
replace incomequintile=1 if indhhin2==1 | indhhin2==2 | indhhin2==3 
replace incomequintile=2 if indhhin2==4 | indhhin2==5 | indhhin2==6 | indhhin2==13
replace incomequintile=3 if indhhin2==7 | indhhin2==8 | indhhin2==9 
replace incomequintile=4 if indhhin2==10 | indhhin2==14
replace incomequintile=5 if indhhin2==15
label variable incomequintile"Income Quintile (1=<$14,999 2=$14,999-$34,999 3=$34,999-$64,999 4=$64,999-$99,999 5=>$100,000)"
label define incomequintile_label 1 "1 <$14,999" 2 "2 $14,999-$34,999" 3 "3 $34,999-$64,999" 4 "4 $64,999-$99,999" 5 ">$100,000"
replace incomequintile=. if indhhin2==77 | indhhin2==99 | indhhin2==. | indhhin2==12
label values incomequintile incomequintile_label

tab incomequintile, miss

*Comorbidities (NB: COPD/Asthma might be a good study covariate)

*Anemia
generate anemia=0
replace anemia=1 if mcq053==1
replace anemia=. if mcq053==. | mcq053==7 | mcq053==9
label variable anemia "Anemia Requiring Treatment (0 = No, 1 = Yes)"
label values anemia yes_no

tab anemia, miss

*Asthma 
generate asthma=0
replace asthma=1 if mcq010==1 & mcq035==1
replace asthma=. if mcq010==. | mcq010==7 | mcq010==9
label variable asthma "Current Asthma (0 = No, 1 = Yes)"
label values asthma yes_no

tab asthma, miss

*COPD
generate COPD=0
replace COPD=1 if  mcq160k==1 & mcq170k==1 
replace COPD=1 if mcq160g==1 | mcq160o==1
replace COPD=. if mcq160g==7 | mcq160g==9 | mcq160g==. | mcq160o==7 | mcq160o==9 | mcq160o==. | mcq160k==7 | mcq160k==9 | mcq160k==.
label variable COPD "Current COPD (0 = No, 1 = Yes)"
label values COPD yes_no

tab COPD, miss


*Thyroid
generate thyroid=0
replace thyroid=1 if mcq170m==1 & mcq160m==1
replace thyroid=. if mcq160m==. | mcq160m==7 | mcq160m==9
label variable thyroid "Current Thyroid Problem (0 = No, 1 = Yes)"
label values thyroid yes_no

tab thyroid, miss

*Diabetes
generate dm=0
replace dm=1 if diq010==1
replace dm=. if diq010==. | diq010==7 | diq010==9
label variable dm "Current Diabetes Mellitus (0 = No, 1 = Yes)"
label values dm yes_no

tab dm, miss

*Hypertension
generate htn=0
replace htn=1 if bpq040a==1 &bpq020==1
replace htn=. if bpq020==. | bpq020==7 | bpq020==9
label variable htn "Hypertension requiring medication (0 = No, 1 = Yes)"
label values htn yes_no

tab htn, miss

**Covariates
*BMI
rename bmxbmi bmi

summarize bmi

generate obesity=0
replace obesity=1 if bmi>=30
replace obesity=. if bmi==.
label variable obesity "Obesity (0 = No, 1 = Yes)"
label values obesity yes_no

tab obesity, miss

*bmicat
generate bmicat=0
replace bmicat=1 if bmi >=18.5 & bmi<25
replace bmicat=2 if bmi >=25 & bmi<30
replace bmicat=3 if bmi>=30
replace bmicat=. if bmi==. 
label variable bmicat "BMI Category (0=Underweight 1=Normal Weight 2=Overweight 3=Obese)"
label define bmicat_label 0 "0 Underweight" 1 "1 Normal Weight" 2 "2 Overweight" 3 "3 Obese" 
label values bmicat bmicat_label

tab bmicat, miss

*overweight
generate overweight=0
replace overweight =1 if bmi>=25
replace overweight=. if bmi==.
label variable overweight "Overweight (0 = No, 1 = Yes)"
label values overweight yes_no

tab overweight, miss

*Smoking
generate smoker=0
replace smoker=1 if smq040==2 & smq020==1
replace smoker=2 if smq040==1 & smq020==1
replace smoker=. if smq020==. | smq020==7 | smq020==9
label variable smoker "Smoking Status (0=Non-smoker 1=Smoker, some days 2=Smoker,daily)"
label define smoker_label 0 "0 Non-smoker" 1 "1 Smoker, some days" 2 "2 Smoker,daily" 
label values smoker smoker_label

tab smoker, miss

*Smoking Binary
generate smokerbin=0
replace smokerbin=1 if smoker==1 | smoker==2
replace smokerbin=. if smoker==.
label variable smokerbin "Smoker Yes no (0 = No, 1 = Yes)"
label values smokerbin yes_no

*Physical Activity
generate physact=0
replace physact=1 if paq650==1 & pad660>=75
replace physact=. if paq650==. | paq650==7 | paq650==9 
label variable physact "Physical Activity (0 = No, 1 = Yes)"
label values physact yes_no

tab physact, miss

generate physactcat=0
replace physactcat=1 if paq650==1 & pad660>=75 & pad660<150
replace physactcat=2 if paq650==1 & pad660>=150 & pad660<300
replace physactcat=3 if paq650==1 & pad660>=300

*hysterectomy
generate hysterectomy=0
replace hysterectomy=1 if rhd280==1
replace hysterectomy=. if rhd280==. | rhd280==7 | rhd280==9
label variable hysterectomy "Prior Hysterectomy (0 = No, 1 = Yes)"
label values hysterectomy yes_no

tab hysterectomy, miss

*Outcome: Incontinence 
* any incontinence
generate anyincontinence=0
replace anyincontinence=1 if kiq005==2 | kiq005==3 | kiq005==4 | kiq005==5
replace anyincontinence=. if kiq005==. | kiq005==7 | kiq005==9
label variable anyincontinence "Any Incontinence (0 = No, 1 = Yes)"
label values anyincontinence yes_no

tab anyincontinence, miss

*incontinence severity
generate incontinencesev=0
*Mild incontinence (less than 1/month or a few times per month)
replace incontinencesev=1 if kiq005==2 | kiq005==3
*Moderate incontinence (a few times per week)
replace incontinencesev=2 if kiq005==4
*Severe incontinence (every day and/or night)
replace incontinencesev=3 if kiq005==5
replace incontinencesev=. if kiq005==. | kiq005==7 | kiq005==9
label variable incontinencesev "Incontinence Severity (0=No Incontinence 1=Mild Incontinence 2=Moderate Incontinence 3=Severe Incontinence)"
label define incontinencesev_label 0 "0 No Incontinence" 1 "1 Mild Incontinence" 2 "2 Moderate Incontinence" 3 "3 Severe Incontinence"
label values incontinencesev incontinencesev_label

tab incontinencesev, miss

*Incontinence Amount
generate incontinenceamt=0
replace incontinenceamt=1 if kiq010==1 | kiq010==2
replace incontinenceamt=2 if kiq010==3
replace incontinenceamt=. if kiq010==. | kiq010==7 | kiq010==9
label variable incontinenceamt "Incontinence Amount (0=No Incontinence 1=Small Volume 2=Large Volume)"
label define incontinenceamt_label 0 "0 No Incontinence" 1 "1 Small Volume" 2 "2 Large Volume" 
label values incontinenceamt incontinenceamt_label

tab incontinenceamt, miss

*incontinence type 
*stress UI (leakage during physical activities and non physical activities - can't use small amount due to missingness')
generate sui=0
replace sui=1 if kiq042==1 | kiq046==1
replace sui=. if kiq042==. | kiq042==7 | kiq042==9 | kiq046==. | kiq046==7 | kiq046==9 
label variable sui "Stress Urinary Incontinence (0 = No, 1 = Yes)"
label values sui yes_no

tab sui, miss

*urge UI (urinated before reaching toilet)
generate uui=0
replace uui=1 if kiq044==1
replace uui=. if kiq044==. | kiq044==7 | kiq044==9
label variable uui "Urge Urinary Incontinence (0 = No, 1 = Yes)"
label values uui yes_no

tab uui, miss

*Nocturia (waking 2+/night to void)
gen nocturia=0
replace nocturia=1 if kiq480>=1 & kiq480<=5
replace nocturia=. if kiq480==. | kiq480==7 | kiq480==9
label variable nocturia "Nocturia (0 = No, 1 = Yes)"
label values nocturia yes_no

tab nocturia, miss

*Mixed (leakage during phys or before reaching toilet or during non-physical activities)
generate mui=0
replace mui=1 if sui==1 & uui==1
replace mui=. if sui==. | uui==.
label variable mui "Mixed Urinary Incontinence (0 = No, 1 = Yes)"
label values mui yes_no

tab mui, miss


drop rhq131 mcq053 indhhin2 mcq035 rhd280 mcq160g mcq160o mcq170m mcq170k diq010 bpq040a smq040 paq650 kiq005 kiq042 kiq044 kiq046 kiq480 

save "NHANES/variablesmerged", replace


*quick exploration (No survey weights - don't report')
tab anyincontinence if studysample==1

tab incontinencesev if studysample==1

tab sui if studysample==1

tab mui if studysample==1

tab nocturia if studysample==1

tab uui if studysample==1

log close 

******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
**********						STATISTICAL ANALYSIS							  ********************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************
******************************************************************************************************************

*****NB: Need to create a weight divided by 4 to account for four cycles!!!!!

use "NHANES/variablesmerged"

log using "NHANES/Nullip Incontinence Exploratory analysis 21_5_2022.smcl", replace



**Specify the survey design variables

gen mec8yr=0.25*wtmec2yr

svyset [w=mec8yr], psu(sdmvpsu) strata(sdmvstra) singleunit(scaled) vce(linearized)

svydes

svy: tab studysample, cell count obs per format(%14.4g)

**Determine study population
* Examine number of exposed and unexposed
svy, subpop(studysample): tab anyincontinence, cell count obs per format(%14.4g)

* Obtain age mean and SD 
svy, subpop(studysample): mean age, over(anyincontinence)

* Need to use regession to compare the groups (equivalent to t-test)
svy, subpop(studysample): regress age anyincontinence

svy: tab studysample, cell count obs per format(%14.4g)

* Obtain bmi mean and SD 
svy, subpop(studysample): mean bmi, over(anyincontinence)

* Need to use regession to compare the groups (equivalent to t-test)
svy, subpop(studysample): regress bmi anyincontinence


*Loop to get baseline characteristics for relevant variables
* Loop to get crosstabs for binary / categorical variables and chi-squared test
foreach baseline in agebin bmicat race educationslim incomequintile anemia asthma thyroid dm htn obesity overweight smoker physact hysterectomy {
svy, subpop(studysample): tab  `baseline' anyincontinence, count obs per format(%14.2fc) col miss 
}

*Determine prevalence of incontinence subtypes
foreach incontinence in anyincontinence sui uui nocturia mui {
svy, subpop(studysample): tab `incontinence', count obs per format(%14.2fc) col miss 
}

*determine severity 
foreach incontinence in anyincontinence sui uui nocturia mui {
svy, subpop(studysample if `incontinence'==1): tab incontinencesev, count obs per format(%14.2fc) col miss 
}

*determine amount
foreach incontinence in anyincontinence sui uui nocturia mui {
svy, subpop(studysample if `incontinence'==1): tab incontinenceamt, count obs per format(%14.2fc) col miss 
}

*determine risk factors univariable regression
foreach riskfactor in overweight agebin physact hysterectomy smoker {
xi: svy, subpop (studysample): logistic anyincontinence `riskfactor', baselevels
}
*

*determine incontinence amount by age groups
foreach incontinence in anyincontinence sui uui nocturia mui {
svy, subpop(studysample): tab `incontinence' agecat, count obs per format(%14.2fc) col miss 
}

*determine risk factors multivariable regression
*Obesity
xi: svy, subpop (studysample): logistic anyincontinence overweight  c.age i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Age 
xi: svy, subpop (studysample): logistic anyincontinence agebin  c.bmi i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Physical Activity
xi: svy, subpop (studysample): logistic anyincontinence physact  c.age c.bmi i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Hysterectomy
xi: svy, subpop (studysample): logistic anyincontinence hysterectomy  c.age i.physact c.bmi i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Smoker
xi: svy, subpop (studysample): logistic anyincontinence smokerbin c.age i.physact c.bmi i.hysterectomy i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels


**Sensitivity analysis SUI 

*determine risk factors univariable regression
foreach riskfactor in overweight agebin physact hysterectomy smoker {
xi: svy, subpop (studysample): logistic sui `riskfactor', baselevels
}
*
*determine risk factors multivariable regression
*Obesity
xi: svy, subpop (studysample): logistic sui overweight  c.age i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Age 
xi: svy, subpop (studysample): logistic sui agebin  c.bmi i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Physical Activity
xi: svy, subpop (studysample): logistic sui physact  c.age c.bmi i.hysterectomy i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Hysterectomy
xi: svy, subpop (studysample): logistic sui hysterectomy  c.age i.physact c.bmi i.smoker i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels
*Smoker
xi: svy, subpop (studysample): logistic sui smokerbin c.age i.physact c.bmi i.hysterectomy i.race i.incomequintile i.educationslim i.asthma i.thyroid i.dm i.htn, baselevels


************************************************************************************
*Multiple Imputation

* Describe missing data among delivery admissions
mdesc age bmi race educationslim incomequintile anemia asthma thyroid dm htn smoker physact /*
*/hysterectomy anyincontinence sui uui mui nocturia if studysample==1

* Multiple imputation set
mi set wide
mi svyset [w=mec8yr], psu(sdmvpsu) strata(sdmvstra) singleunit(scaled) vce(linearized)

mi register imputed incomequintile
mi register regular overweight bmi age race education anemia asthma thyroid dm htn smoker physact /*
*/ hysterectomy anyincontinence sui uui nocturia mui

mi impute chained (mlogit) incomequintile = bmi overweight age race education anemia asthma thyroid dm htn smoker physact /*
*/ hysterectomy anyincontinence sui uui nocturia mui [w=mec8yr], add(10) /*
	*/ rseed(12345) force dots

save "NHANES/variablesmerged_imputed.dta", replace

*Univariable with imputation
foreach riskfactor in overweight agebin physact hysterectomy smoker {
mi estimate, or: svy, subpop (studysample): logistic anyincontinence `riskfactor', baselevels
}
*
*determine risk factors multivariable regression with imputation
*Obesity
mi estimate, or: svy, subpop (studysample): logistic anyincontinence overweight  c.age i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Age 
mi estimate, or: svy, subpop (studysample): logistic anyincontinence agebin  c.bmi i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Physical Activity
mi estimate, or: svy, subpop (studysample): logistic anyincontinence physact  c.age c.bmi i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Hysterectomy
mi estimate, or: svy, subpop (studysample): logistic anyincontinence hysterectomy  c.age i.physact c.bmi i.smoker i.race i.incomequintile i.educationslim, baselevels
*Smoker
mi estimate, or: svy, subpop (studysample): logistic anyincontinence smokerbin c.age i.physact c.bmi i.hysterectomy i.race i.incomequintile i.educationslim, baselevels
	
	
*Sensitivity Analysis with Imputation
*Univariable with imputation
foreach riskfactor in overweight agebin physact hysterectomy smoker {
mi estimate, or: svy, subpop (studysample): logistic sui `riskfactor', baselevels
}
*
*determine risk factors multivariable regression with imputation
*Obesity
mi estimate, or: svy, subpop (studysample): logistic sui overweight  c.age i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Age 
mi estimate, or: svy, subpop (studysample): logistic sui agebin  c.bmi i.physact i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Physical Activity
mi estimate, or: svy, subpop (studysample): logistic sui physact  c.age c.bmi i.hysterectomy i.smoker i.race i.incomequintile i.educationslim, baselevels
*Hysterectomy
mi estimate, or: svy, subpop (studysample): logistic sui hysterectomy  c.age i.physact c.bmi i.smoker i.race i.incomequintile i.educationslim, baselevels
*Smoker
mi estimate, or: svy, subpop (studysample): logistic sui smokerbin c.age i.physact c.bmi i.hysterectomy i.race i.incomequintile i.educationslim, baselevels

