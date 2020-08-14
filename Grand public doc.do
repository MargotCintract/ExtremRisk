histogram id_db_profession, discrete width(1) start(1) ytitle("Density") xtitle("Profession") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of profession")
histogram id_db_gender, discrete width(1) start(1) ytitle("Density") xtitle("Gender") xlabel(#4, labels labsize(small) valuelabel) title("Distribution of gender")
//Gender depending on country
graph pie if id_db_pays_residence==77, over(id_db_gender) plabel(_all percent) cw title("Distribution of gender in France") legend(on)
graph pie if id_db_pays_residence==111, over(id_db_gender) plabel(_all percent) cw title("Distribution of gender in Italy") legend(on)
histogram id_db_study, discrete width(1) start(1) ytitle("Density") xtitle("Education level") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of education levels")
histogram id_db_revenu, discrete width(1) start(1) ytitle("Density") xtitle("Monthly net income in Euros") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of monthly net income")
histogram id_db_kid, discrete width(1) start(0) ytitle("Density") xtitle("Number of children") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the number of children")
histogram id_db_statutm, discrete width(1) start(2) ytitle("Density") xtitle("Marital Status") xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the marital status")
histogram id_db_trip, discrete ytitle(Density) xtitle(Number of trips) xlabel(#20, labels labsize(medium) angle(forty_five)) title(Density of weekly trips)
histogram id_db_person, discrete width(1) start(1) ytitle("Density") xtitle("Household size") xlabel(#11, labels labsize(small) valuelabel) title("Distribution of household size")
tab id_db_v2pays_residence
graph bar (mean) id_db_person, over(id_db_age, label(angle(forty_five) labsize(medsmall))) ytitle(Percent) title(Household size of respondents depending on their age)
graph bar (mean) id_db_person, over(id_db_kid, label(angle(forty_five) labsize(medsmall))) ytitle(Percent) title(Household size depending on the number of children)
histogram id_db_density, discrete width(1) start(1) ytitle("Density") xtitle("Size of city") xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of size of cities")


						//BEGIN OF DOC
//Individual characteristics
graph pie, over(finish) title("Proportion of respondents who completed the survey") subtitle("until the end", size(large) color(dknavy))  plabel(_all percent, color(white) size(large)) legend(on)
graph pie, over(gender) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(4 percent, color(white) size(medium)) cw title(Distribution of gender) legend(on) caption("*other represent 0.42% of the respondents")
graph pie if country==77, over(gender) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(4 percent, color(white) size(medium)) cw title(Distribution of gender in France) legend(on) caption("*other represent 0.17% of the respondents")
graph save a
graph pie if country==111, over(gender) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(4 percent, color(white) size(medium)) cw title(Distribution of gender in Italy) legend(on)
graph save b
graph pie if country!=111&country!=77, over(gender) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(3 percent, color(white) size(medium)) plabel(4 percent, color(white) size(medium)) cw title(Distribution of gender in other countries) note("Other countries are all countries which are not Italy or France, and respondents who", size(medsmall)) caption("choose not to respond") legend(on)
graph combine a.gph b.gph 

tab country

histogram age, discrete frequency ytitle("Frequency") xtitle("Age") xlabel(#18, labels labsize(medsmall) angle(forty_five) valuelabel) title("Distribution of age") xtitle(, size(zero))

graph pie, over(moudur) title("Distribution of soft and hard sciences") legend(on) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(3 percent, color(white) orientation(vertical)size(medium)) plabel(4 percent, color(white) size(medium) orientation(vertical))

//inf ou egal a 3, age = under 25 == 428 
tab gender if age<=3
tab age if age<=3
tab marital_status if age<=3
tab kid if age<=3
sum kid if age<=3
sum household_size if age<=3
tab household_size if age<=3
tab density if age<=3
tab study if age<=3
tab moudur if age<=3
tab job if age<=3
sum income if age<=3
tab income if age<=3

//over 25 married, widowed or divorced, marital status==2 or 5 or4  == 143/715
tab gender if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab age if age>3&(marital_status==2|marital_status==5|marital_status==4)

tab marital_status if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab kid if age>3&(marital_status==2|marital_status==5|marital_status==4)
sum kid if age>3&(marital_status==2|marital_status==5|marital_status==4)
sum household_size if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab household_size if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab density if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab study if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab moudur if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab job if age>3&(marital_status==2|marital_status==5|marital_status==4)
sum income if age>3&(marital_status==2|marital_status==5|marital_status==4)
tab income if age>3&(marital_status==2|marital_status==5|marital_status==4)

//over 25 single 6 == 61
tab gender if age>3&(marital_status==6)
tab age if age>3&(marital_status==6)

tab marital_status if age>3&(marital_status==6)
tab kid if age>3&(marital_status==6)
sum kid if age>3&(marital_status==6)
sum household_size if age>3&(marital_status==6)
tab household_size if age>3&(marital_status==6)
tab density if age>3&(marital_status==6)
tab study if age>3&(marital_status==6)
tab moudur if age>3&(marital_status==6)
tab job if age>3&(marital_status==6)
sum income if age>3&(marital_status==6)
tab income if age>3&(marital_status==6)

//over 25 in common law relation ship or NA, marital status==3 7 == 81
tab gender if age>3&(marital_status==3|marital_status==7)
tab age if age>3&(marital_status==3|marital_status==7)

tab marital_status if age>3&(marital_status==3|marital_status==7)
tab kid if age>3&(marital_status==3|marital_status==7)
sum kid if age>3&(marital_status==3|marital_status==7)
sum household_size if age>3&(marital_status==3|marital_status==7)
tab household_size if age>3&(marital_status==3|marital_status==7)
tab density if age>3&(marital_status==3|marital_status==7)
tab study if age>3&(marital_status==3|marital_status==7)
tab moudur if age>3&(marital_status==3|marital_status==7)
tab job if age>3&(marital_status==3|marital_status==7)
sum income if age>3&(marital_status==3|marital_status==7)
tab income if age>3&(marital_status==3|marital_status==7)



