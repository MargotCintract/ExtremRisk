cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data\data\db_questionnaire_v6.csv"
import delimited db_questionnaire_v7, delimiter(";")

//supprimer les 35 premières observations, contiennent de la religion
drop if _n <= 35
drop id_db_religion
//Pas de contenu pour id_db_pays_origine??
drop id_db_pays_origine

//variables socio-démographiques, analyse

//age
//drop if id_db_age==0
#delimit ;
label define labage 
1 "<14" 
2 "14-19"
3 "20-25"
4 "26-30"
5 "31-35"
6 "36-40"
7 "41-45"
8 "46-50" 
9 "51-55" 
10 "56-60"
11 "61-65"
12 "66-70"
13 "71-75"
14 "76-80"
15 "81-85"
16 "86-90"
17 ">90"
18 "NA"
;
#delimit cr
label values id_db_age labage
tab id_db_age
histogram id_db_age, discrete ytitle("Density") xtitle("Age") xlabel(#18, labels labsize(medsmall) angle(forty_five) valuelabel) title("Distribution of age")

//Job of people
//drop if id_db_profession==0
#delimit ;
label define labjob 
1 "Craftsmen" 
2 "Trade, entrepreneurs"
3 "Higher intellectual professions"
4 "Intermediate"
5 "Employees"
6 "Workers"
7 "Retirees"
8 "Other without professional activity" 
9 "Farmers" 
10 "Other"
11 "None"
12 "NA"
;
#delimit cr
label values id_db_profession labjob
tab id_db_profession
histogram id_db_profession, discrete width(1) start(1) ytitle("Density") xtitle("Profession") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of profession")

//Look at the job of young people, need label for job
tab id_db_profession id_db_age if id_db_age==3, column

//Pays residence
//drop if id_db_profession==0
tab id_db_profession
#delimit ;
label define labpays
1 "Afghanistan" 
2 "Aland Islands"
4 "Algeria"
10 "Antigua and Barbuda"
11 "Argentina"
13 "Aruba"
14 "Australia" 
22 "Belgium" 
41 "Canada"
51 "Congo"
53 "Cook Islands"
57 "Cuba"
72 "Ethiopia"
76 "Finland"
77 "France"
83 "Georgia"
104 "India"
111 "Italy"
137 "Mali"
159 "New Zealand"
182 "Reunion"
197 "Senegal"
201 "Singapore"
210 "Spain"
227 "Tunisia"
235 "UK"
237 "US"
238 "Uruguay"
240 "Vanuatu"
249 "Zimbabwe"
250 "NA"
;
#delimit cr
label values id_db_pays_residence labpays
tab id_db_pays_residence

//Gender
//drop if id_db_gender==0
#delimit ;
label define labelgender
1 "men"
2 "women"
3 "other"
4 "prefer not to say"
;
#delimit cr
label values id_db_gender labelgender
tab id_db_gender
histogram id_db_gender, discrete width(1) start(1) ytitle("Density") xtitle("Gender") xlabel(#4, labels labsize(small) valuelabel) title("Distribution of gender")
tab id_db_gender
graph pie, over(id_db_gender) plabel(_all percent) cw title(Distribution of gender) legend(on)

//City
//drop if id_db_density==0
#delimit ;
label define labdensity
1 "Rural area, village" 
2 "Small city"
3 "Average-size city"
4 "Suburbs of large city"
5 "Large city"
6 "NA"
;
#delimit cr
label values id_db_density labdensity
tab id_db_density
histogram id_db_density, discrete width(1) start(1) ytitle("Density") xtitle("Size of city") xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of size of cities")

//Studies
//drop if id_db_study==0
#delimit ;
label define labstudy
1 "Primary School" 
2 "High school"
3 "College"
4 "Bachelor's degree "
5 "Master's degree "
6 "PhD or equivalent  "
7 "NA"
;
#delimit cr
label values id_db_study labstudy
tab id_db_study
histogram id_db_study, discrete width(1) start(1) ytitle("Density") xtitle("Type of study") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of type of studies")

//Field
//drop if id_db_field==0
#delimit ;
label define labfield
1 "Business and Economics" 
2 "Accounting and Finance"
3 "Business and Management"
4 "Economics and Econometrics"
5 "Life sciences"
6 "Agriculture and Forestry"
7 "Biological Sciences" 
9 "Veterinary Science" 
10 "Art and humanities"
11 "Archeology"
12 "Architecture"
13 "Art, Performing Arts and Design"
14 "History, Philosophy and Theology"
15 "Languages, Literature and Linguistics"
16 "Engineering & technology"
17 "Chemical Engineering"
18 "Civil Engineering"
19 "Electrical & Electronic"
20 "General Engineering"
21 "Mechanical & Aerospace"
22 "Physical sciences"
23 "Chemistry"
24 "Geology, Environmental, Earth & Marine Sciences"
25 "Mathematics & Statistics"
26 "Physics & Astronomy"
27 "Social sciences"
28 "Communication & Media Studies"
29 "Geography"
30 "Politics & International Studies"
31 "Sociology"
32 "Computer science"
33 "Education"
34 "Law"
35 "Clinical, pre-clinical and Health"
36 "Medicine and Dentistry"
37 "Other Health"
38 "Psychology"
39 "Other"
40 "NA"
;
#delimit cr
label values id_db_field labfield
tab id_db_field, nol
//Pie chart, could try to put together fields...ask Nathalie and André


//Revenu
//drop if id_db_revenu==0
#delimit ;
label define labrevenu
1 "0-1000" 
2 "1.001-2.000"
3 "2.001-3.000"
4 "3.001-4.000"
5 "4.001-5.000"
6 "5.001-6.000"
7 "6.001-7.000"
8 "7.001-8.000"
9 "8.001-9.000"
10 "9.001-10.000"
11 ">10.000"
12 "NA"
;
#delimit cr
label values id_db_revenu labrevenu
tab id_db_revenu
//variable continue....peut être mieux de faire autre chose qu'un histogramme
graph box id_db_revenu, ytitle("Revenue") ylabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the revenue") 


//Currency
//drop if id_db_currency==0
#delimit ;
label define labcurrency
1 "Afghani" 
3 "Baht"
5 "Birr"
8 "Cedi"
19 "Algerian Dinar"
21 "Iraqi Dinar"
28 "Moroccan Dirham"
30 "Australian Dollar"
34 "Canadian Dollar"
49 "New-Zealand Dollar"
52 "US Dollar"
56 "Euro"
61 "CFA Franc"
64 "Congolese Franc"
69 "Gourde"
93 "Pound Sterling"
96 "Turkish Lira"
104 "Nafka"
122 "Omani Rial"
127 "Saudi Riyal"
130 "Indian Rupee"
135 "Seychelles Rupee"
136 "Sri Lanka Rupee"
154 "Yen"
156 "Zloty"
157 "NA"
;
#delimit cr
label values id_db_currency labcurrency
tab id_db_currency if id_db_currency!=0

//Kid
//drop if id_db_kid==0
#delimit ;
label define labkid 
1 "0"
2 "1"
3 "2"
4 "3"
5 "4"
6 "5"
7 "6"
8 "7"
9 "8"
10 "9"
11 "10+"
12 "NA"
;
#delimit cr
label values id_db_kid labkid
tab id_db_kid
histogram id_db_kid, discrete width(1) start(0) ytitle("Density") xtitle("Number of children") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the number of children")

//Statutm
//drop if id_db_statutm==0
#delimit ;
label define labstatutm 
2 "Married"
3 "Common-law relationship"
4 "Divorced, seperated"
5 "Widowed"
6 "Single"
7 "NA"
;
#delimit cr
label values id_db_statutm labstatutm
tab id_db_statutm
histogram id_db_statutm, discrete width(1) start(2) ytitle("Density") xtitle("Marital Status") xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the marital status")

//Trip
//drop if id_db_trip==0
replace id_db_trip=id_db_trip-1
#delimit ;
label define labtrip
70 "70+"
71 "NA"
;
#delimit cr
label values id_db_trip labtrip
tab id_db_trip

//Person
//drop if id_db_person==0
#delimit ;
label define labperson
10 "10+"
11 "NA"
;
#delimit cr
label values id_db_person labperson
tab id_db_person

