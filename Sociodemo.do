cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"

putdocx begin, font(, 12) landscape

//LAST PART SOCIODEMO
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Individual characteristics"), bold

putdocx paragraph
histogram age, discrete frequency ytitle("Frequency") xtitle(, size(zero)) xlabel(#18, labels labsize(medsmall) angle(forty_five) valuelabel) title("Distribution of age")
graph export age.png, replace
putdocx paragraph, halign(center)
putdocx image age.png

histogram job, discrete frequency width(1) start(1) xtitle(, size(zero)) ytitle("Frequency") xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of profession")
graph export job.png, replace
putdocx paragraph, halign(center)
putdocx image job.png

putdocx paragraph, halign(center) font( ,16)
putdocx text ("Table of country of residency")
tab country, matcell(x)
matrix list x
matrix rownames x = "Afghanistan" "Aland Islands" "Algeria" "Antigua and Barbuda" "Argentina" "Aruba" "Australia" "Belgium" "Canada" "Congo" "Cook Islands" "Cuba" "Ethiopia" "Finland" "France" "Georgia" "India" "Italy" "Mali" "New Zealand" "Poland" "Reunion" "Senegal" "Singapore" "Spain" "Tunisia" "Turkey" "UK" "US" "Uruguay" "Vanuatu" "Zimbabwe" "NA"
matrix colnames x = "Frequency"
putdocx table tbl5 = matrix(x), rownames colnames

histogram gender, discrete frequency width(1) start(1) ytitle("Frequency") xtitle(, size(zero)) xlabel(#4, labels labsize(small) valuelabel) title("Distribution of gender")
graph export gender.png, replace
putdocx paragraph, halign(center)
putdocx image gender.png

histogram density, discrete frequency width(1) start(1) ytitle("Frequency") xtitle(, size(zero)) xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of size of cities")
graph export density.png, replace
putdocx paragraph, halign(center)
putdocx image density.png

histogram study, discrete frequency width(1) start(1) ytitle("Frequency") xtitle(, size(zero)) xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of education level")
graph export study.png, replace
putdocx paragraph, halign(center)
putdocx image study.png

putdocx paragraph, halign(center) font( ,16)
putdocx text ("Table of profession")
tab field, matcell(y)
matrix list y
matrix rownames y = "Business and Economics" "Accounting and Finance" "Business and Management" "Economics and Econometrics" "Life sciences" "Agriculture and Forestry" "Biological Sciences"  "Veterinary Science"  "Art and humanities" "Archeology" "Architecture" "Art, Performing Arts and Design" "History, Philosophy and Theology" "Languages and Literature" "Engineering & technology" "Chemical Engineering" "Civil Engineering" "Electrical & Electronic" "General Engineering" "Mechanical & Aerospace" "Physical sciences" "Chemistry" "Geology & Environmental Sciences" "Mathematics & Statistics" "Physics & Astronomy" "Social sciences" "Communication & Media Studies" "Geography" "Politics & International Studies" "Sociology" "Computer science" "Education" "Law" "Medicine and Dentistry" "Other Health" "Psychology" "Other" "NA"
matrix colnames y = "Frequency"
putdocx table tbl6 = matrix(y), rownames colnames

graph pie, over(moudur) plabel(1 percent, color(white) size(large)) plabel(2 percent, color(white) size(large)) plabel(3 percent, color(white) size(medsmall) orientation(vertical)) plabel(4 percent, color(white) size(medsmall) orientation(vertical)) title("Distribution of soft and hard sciences") legend(on)
graph export moudur.png, replace
putdocx paragraph, halign(center)
putdocx image moudur.png

histogram income, discrete frequency width(1) start(1) ytitle("Frequency") xtitle(, size(zero)) xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of monthly net income")
graph export income.png, replace
putdocx paragraph, halign(center)
putdocx image income.png

//tab currency

histogram kid, discrete frequency width(1) start(0) ytitle("Frequency") xtitle(, size(zero)) xlabel(#12, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of the number of children")
graph export kid.png, replace
putdocx paragraph, halign(center)
putdocx image kid.png

histogram marital_status, discrete frequency width(1) start(2) ytitle("Frequency") xtitle(, size(zero)) xlabel(#6, labels labsize(small) angle(forty_five) valuelabel) title("Distribution of marital status")
graph export marital_status.png, replace
putdocx paragraph, halign(center)
putdocx image marital_status.png

histogram trip, discrete frequency ytitle("Frequency") xtitle(, size(zero)) xlabel(#20, labels labsize(medium) angle(forty_five)) title("Distribution of weekly trips")
graph export trip.png, replace
putdocx paragraph, halign(center)
putdocx image trip.png

histogram household_size, discrete frequency width(1) start(1) ytitle("Frequency") xtitle(, size(zero)) xlabel(#11, labels labsize(small) valuelabel) title("Distribution of household size")
graph export household_size.png, replace
putdocx paragraph, halign(center)
putdocx image household_size.png

putdocx save sociodemo.docx, replace
