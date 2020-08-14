		//Présentation des résultats Index Prelec
		
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape
putdocx paragraph, halign(center) font( ,20)
putdocx text ("Prelec Index: A bayesian Truth Serum for Subjective Data"), bold
putdocx paragraph, font(, 12)
putdocx paragraph
putdocx text ("A score for a respondent can be inferior, equal or superior to 0. ")
putdocx text ("A respondent will have a score of 0 for a question if he predicted the exact mean of all respondents answer for this question.")
/*putdocx paragraph
putdocx text ("The score of a respondent will increase if:")
putdocx paragraph
putdocx text ("		- what the respondent expects for response k is superior to the mean response for response k")
putdocx paragraph
putdocx text ("		- If, for a respondent r who answered response k, the mean expectation for k is superior to the mean response for k")
putdocx paragraph, font(, 12)
putdocx text ("The score of a respondent will decrease if:")
putdocx paragraph
putdocx text ("		- what the respondent expects for response k is inferior to the mean response for response k")
putdocx paragraph
putdocx text ("		- If, for a respondent r who answered response k, the mean expectation for k is inferior to the mean response for k")
*/
putdocx paragraph
putdocx text ("If the respondent expects more than the actual value of mean responses, his score will be superior than 0. If he expects less, his score will be inferior than 0. Moreover, if the respondent answers -a-, his score for this answer will also depend on the mean of expectations and the mean of responses. If the mean of responses is superior to the mean of expectations, his score will increase. If the mean of expectations is superior to the mean of responses, his score will decrease.")
putdocx paragraph
putdocx text ("The formula for the score is the following: (see Prelec, 2016)")
putdocx paragraph, halign(center)
putdocx image "equation.png"
putdocx paragraph
putdocx text ("With x a dummy variable, equals to 0 when the respondent did not answer this response and equals to 1 when he did. Y representing the expectation of question k from respondent r, X-bar being the average of responses to the answer k and Y-bar being the average of expectations to answer k.")

putdocx pagebreak
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Scores for Q1 to Q3: "), bold 

graph box ScoreResp_Q1 if ScoreResp_Q1!=., title(Scores of respondents for Q1) ytitle(Score of respondents) caption("Nbr of observations: 899") 
graph export a1.png, replace
putdocx paragraph, halign(center)
putdocx image a1.png
graph box ScoreResp_Q2_r1 ScoreResp_Q2_r2 ScoreResp_Q2_r3 ScoreResp_Q2_r4 ScoreResp_Q2_r5 if ScoreResp_Q2_r1!=.&ScoreResp_Q2_r2!=.&ScoreResp_Q2_r3!=.&ScoreResp_Q2_r4!=.&ScoreResp_Q2_r5!=., title(Scores of respondents for Q2) ytitle(Scores of respondents) legend(order(1 "Score for QII-1" 2 "Score for QII-2" 3 "Score for QII-3" 4 "Score for QII-4" 5 "Score for QII-5"))
graph export a2.png, replace
putdocx paragraph, halign(center)
putdocx image a2.png
graph box ScoreResp_Q3_r1 ScoreResp_Q3_r2 ScoreResp_Q3_r3 ScoreResp_Q3_r4 ScoreResp_Q3_r5 if ScoreResp_Q3_r1!=.&ScoreResp_Q3_r2!=.&ScoreResp_Q3_r3!=.&ScoreResp_Q3_r4!=.&ScoreResp_Q3_r5!=., title(Scores of respondents for Q3) ytitle(Scores of respondents) legend(order(1 "Score for QIII-1" 2 "Score for QIII-2" 3 "Score for QIII-3" 4 "Score for QIII-4" 5 "Score for QIII-5"))

graph export a3.png, replace
putdocx paragraph, halign(center)
putdocx image a3.png

putdocx pagebreak
putdocx paragraph, font(, 16) halign(center)
putdocx text ("Scores dependind on respondents answers"), bold
putdocx paragraph, halign(center) font( ,16)
putdocx text ("Question I: "), bold 		

graph box ScoreResp_Q1 if ScoreResp_Q1!=., over(q1, relabel(1 "No" 2 "Yes without consequences" 3 "Yes with consequences") label(angle(forty_five))) ytitle(Scores of respondents) title(Scores for respondents depending on their response to Q1)  ytitle(Score)
graph export a4.png, replace
putdocx paragraph, halign(center)
putdocx image a4.png

putdocx paragraph, halign(center) font( ,16)
putdocx text ("Question II: "), bold 

graph box ScoreResp_Q2_r1 if ScoreResp_Q2_r1!=., over(q2_r1) title(Score of respondents for Q2 r1, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 941.", size(medsmall)) caption("Nbr of predictions: 801.")
graph save b6, replace
graph export b6.png, replace
graph box ScoreResp_Q2_r2 if ScoreResp_Q2_r2!=., over(q2_r2) title(Score of respondents for Q2 r2, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 939.", size(medsmall)) caption("Nbr of predictions: 833.")
graph save b7, replace
graph export b7.png, replace
graph box ScoreResp_Q2_r3 if ScoreResp_Q2_r3!=., over(q2_r3) title(Score of respondents for Q2 r3, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 939.", size(medsmall)) caption("Nbr of predictions: 847.")
graph save b8, replace
graph export b8.png, replace
graph box ScoreResp_Q2_r4 if ScoreResp_Q2_r4!=., over(q2_r4) title(Score of respondents for Q2 r4, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 939.", size(medsmall)) caption("Nbr of predictions: 830.")
graph save b9, replace
graph export b9.png, replace
graph box ScoreResp_Q2_r5 if ScoreResp_Q2_r5!=., over(q2_r5) title(Score of respondents for Q2 r5, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 939.", size(medsmall)) caption("Nbr of predictions: 801.")
graph save c1, replace
graph export c1.png, replace

graph combine b6.gph b7.gph b8.gph b9.gph c1.gph 
graph export b6-c1.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c1.png

putdocx paragraph, halign(center) font( ,16)
putdocx text ("Question III: "), bold 

graph box ScoreResp_Q3_r1, over(q3_r1) title(Score of respondents for Q3 r1, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 940.", size(medsmall)) caption("Nbr of predictions: 828.")
graph save b6, replace
graph export b6.png, replace
graph box ScoreResp_Q3_r2, over(q3_r2) title(Score of respondents for Q3 r2, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 937.", size(medsmall)) caption("Nbr of predictions: 836.")
graph save b7, replace
graph export b7.png, replace
graph box ScoreResp_Q3_r3, over(q3_r3) title(Score of respondents for Q3 r3, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 937.", size(medsmall)) caption("Nbr of predictions: 820.")
graph save b8, replace
graph export b8.png, replace
graph box ScoreResp_Q3_r4, over(q3_r4) title(Score of respondents for Q3 r4, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 937.", size(medsmall)) caption("Nbr of predictions: 791.")
graph save b9, replace
graph export b9.png, replace
graph box ScoreResp_Q3_r5, over(q3_r5) title(Score of respondents for Q3 r5, size(medlarge)) subtitle("depending on their answer", size(medlarge) color(dknavy)) ytitle(Score) note("Nbr of observations: 938.", size(medsmall)) caption("Nbr of predictions: 728.")
graph save c1, replace
graph export c1.png, replace

graph combine b6.gph b7.gph b8.gph b9.gph c1.gph 
graph export b6-c1.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c1.png

	// f to f, h to h...etc
putdocx pagebreak
putdocx paragraph, font(, 16) halign(center)
putdocx text ("Scores dependind on gender, without outliers:"), bold
putdocx paragraph, halign(center) font(,16)
putdocx text ("Question I: ")

graph box ScoreResp_Q1 if gender==1|gender==2, nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall))
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q1h ScoreResp_Q1f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q1h ScoreResp_Q1f if gender==2, nooutsides box (1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ1h ScoreQ1f if (gender==1&ScoreQ1h!=.)|(gender==2&ScoreQ1f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q1f ScoreResp_Q1h if (gender==2&ScoreResp_Q1h!=.)|(gender==1&ScoreResp_Q1f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question I depending on gender, size(med)) note("Number of observations for responses, men = 253, women = 414", size(small)) caption("Number of observations for predictions, men = 243, women = 398", size(small))

graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(,16)
putdocx text ("Question II: A global vaccine has been found. It can either make the virus disappears forever or make the population die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question II- First response (1 chance over: 100 billion)")

graph box ScoreResp_Q2_r1 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r1h ScoreResp_Q2_r1f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r1h ScoreResp_Q2_r1f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r1h ScoreQ2r1f if (gender==1&ScoreQ2r1h!=.)|(gender==2&ScoreQ2r1f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r1f ScoreResp_Q2_r1h if (gender==2&ScoreResp_Q2_r1h!=.)|(gender==1&ScoreResp_Q2_r1f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-1 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 414", size(small)) caption("Number of observations for predictions, men = 206, women = 353", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Second response (1 chance over: 10 billion)")

graph box ScoreResp_Q2_r2 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r2h ScoreResp_Q2_r2f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r2h ScoreResp_Q2_r2f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r2h ScoreQ2r2f if (gender==1&ScoreQ2r2h!=.)|(gender==2&ScoreQ2r2f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r2f ScoreResp_Q2_r2h if (gender==2&ScoreResp_Q2_r2h!=.)|(gender==1&ScoreResp_Q2_r2f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-2 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 413", size(small)) caption("Number of observations for predictions, men = 220, women = 369", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Third response (1 chance over: 1 billion)")

graph box ScoreResp_Q2_r3 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r3h ScoreResp_Q2_r3f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r3h ScoreResp_Q2_r3f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r3h ScoreQ2r3f if (gender==1&ScoreQ2r3h!=.)|(gender==2&ScoreQ2r3f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r3f ScoreResp_Q2_r3h if (gender==2&ScoreResp_Q2_r3h!=.)|(gender==1&ScoreResp_Q2_r3f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-3 depending on gender, size(med))  note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 224, women = 377", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fourth response (1 chance over: 100 million)")

graph box ScoreResp_Q2_r4 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r4h ScoreResp_Q2_r4f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r4h ScoreResp_Q2_r4f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r4h ScoreQ2r4f if (gender==1&ScoreQ2r4h!=.)|(gender==2&ScoreQ2r4f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r4f ScoreResp_Q2_r4h if (gender==2&ScoreResp_Q2_r4h!=.)|(gender==1&ScoreResp_Q2_r4f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-4 depending on gender, size(med))  note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 224, women = 368", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fifth response (1 chance over: 10 million)")

graph box ScoreResp_Q2_r5 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r5h ScoreResp_Q2_r5f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r5h ScoreResp_Q2_r5f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r5h ScoreQ2r5f if (gender==1&ScoreQ2r5h!=.)|(gender==2&ScoreQ2r5f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r5f ScoreResp_Q2_r5h if (gender==2&ScoreResp_Q2_r5h!=.)|(gender==1&ScoreResp_Q2_r5f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-5 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 217, women = 353", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(, 16)
putdocx text ("Question III: A vaccine has been found. It can either eliminate any risk of being infected by the virus or make you die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question III- First response (1 chance over: 1 million)")

graph box ScoreResp_Q3_r1 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r1h ScoreResp_Q3_r1f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r1h ScoreResp_Q3_r1f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r1h ScoreQ3r1f if (gender==1&ScoreQ3r1h!=.)|(gender==2&ScoreQ3r1f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r1f ScoreResp_Q3_r1h if (gender==2&ScoreResp_Q3_r1h!=.)|(gender==1&ScoreResp_Q3_r1f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-1 depending on gender, size(med)) note("Number of observations for responses, men = 253, women = 414", size(small)) caption("Number of observations for predictions, men = 221, women = 370", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Second response (1 chance over: 300 000)")

graph box ScoreResp_Q3_r2 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r2h ScoreResp_Q3_r2f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r2h ScoreResp_Q3_r2f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r2h ScoreQ3r2f if (gender==1&ScoreQ3r2h!=.)|(gender==2&ScoreQ3r2f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r2f ScoreResp_Q3_r2h if (gender==2&ScoreResp_Q3_r2h!=.)|(gender==1&ScoreResp_Q3_r2f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-2 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 229, women = 378", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Third response (1 chance over: 100 000)")

graph box ScoreResp_Q3_r3 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r3h ScoreResp_Q3_r3f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r3h ScoreResp_Q3_r3f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r3h ScoreQ3r3f if (gender==1&ScoreQ3r3h!=.)|(gender==2&ScoreQ3r3f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r3f ScoreResp_Q3_r3h if (gender==2&ScoreResp_Q3_r3h!=.)|(gender==1&ScoreResp_Q3_r3f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-3 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 222, women = 371", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fourth response (1 chance over: 10 000)")

graph box ScoreResp_Q3_r4 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r4h ScoreResp_Q3_r4f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r4h ScoreResp_Q3_r4f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r4h ScoreQ3r4f if (gender==1&ScoreQ3r4h!=.)|(gender==2&ScoreQ3r4f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r4f ScoreResp_Q3_r4h if (gender==2&ScoreResp_Q3_r4h!=.)|(gender==1&ScoreResp_Q3_r4f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-4 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 215, women = 354", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fifth response (1 chance over: 1 000)")

graph box ScoreResp_Q3_r5 if gender==1|gender==2,nooutsides over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r5h ScoreResp_Q3_r5f if gender==1, nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r5h ScoreResp_Q3_r5f if gender==2, nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r5h ScoreQ3r5f if (gender==1&ScoreQ3r5h!=.)|(gender==2&ScoreQ3r5f!=.), nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r5f ScoreResp_Q3_r5h if (gender==2&ScoreResp_Q3_r5h!=.)|(gender==1&ScoreResp_Q3_r5f !=.), nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-5 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 198, women = 322", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

// f to f, h to h...etc
putdocx pagebreak
putdocx paragraph, font(, 16) halign(center)
putdocx text ("Scores dependind on gender, with outliers:"), bold
putdocx paragraph, halign(center) font(,16)
putdocx text ("Question I: ")

graph box ScoreResp_Q1 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall))
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q1h ScoreResp_Q1f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q1h ScoreResp_Q1f if gender==2, box (1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ1h ScoreQ1f if (gender==1&ScoreQ1h!=.)|(gender==2&ScoreQ1f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q1f ScoreResp_Q1h if (gender==2&ScoreResp_Q1h!=.)|(gender==1&ScoreResp_Q1f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question I depending on gender, size(med)) note("Number of observations for responses, men = 253, women = 414", size(small)) caption("Number of observations for predictions, men = 243, women = 398", size(small))

graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(,16)
putdocx text ("Question II: A global vaccine has been found. It can either make the virus disappears forever or make the population die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question II- First response (1 chance over: 100 billion)")

graph box ScoreResp_Q2_r1 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r1h ScoreResp_Q2_r1f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r1h ScoreResp_Q2_r1f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r1h ScoreQ2r1f if (gender==1&ScoreQ2r1h!=.)|(gender==2&ScoreQ2r1f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r1f ScoreResp_Q2_r1h if (gender==2&ScoreResp_Q2_r1h!=.)|(gender==1&ScoreResp_Q2_r1f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-1 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 414", size(small)) caption("Number of observations for predictions, men = 206, women = 353", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Second response (1 chance over: 10 billion)")

graph box ScoreResp_Q2_r2 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r2h ScoreResp_Q2_r2f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r2h ScoreResp_Q2_r2f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r2h ScoreQ2r2f if (gender==1&ScoreQ2r2h!=.)|(gender==2&ScoreQ2r2f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r2f ScoreResp_Q2_r2h if (gender==2&ScoreResp_Q2_r2h!=.)|(gender==1&ScoreResp_Q2_r2f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-2 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 413", size(small)) caption("Number of observations for predictions, men = 220, women = 369", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Third response (1 chance over: 1 billion)")

graph box ScoreResp_Q2_r3 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r3h ScoreResp_Q2_r3f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r3h ScoreResp_Q2_r3f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r3h ScoreQ2r3f if (gender==1&ScoreQ2r3h!=.)|(gender==2&ScoreQ2r3f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r3f ScoreResp_Q2_r3h if (gender==2&ScoreResp_Q2_r3h!=.)|(gender==1&ScoreResp_Q2_r3f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-3 depending on gender, size(med))  note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 224, women = 377", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fourth response (1 chance over: 100 million)")

graph box ScoreResp_Q2_r4 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r4h ScoreResp_Q2_r4f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r4h ScoreResp_Q2_r4f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r4h ScoreQ2r4f if (gender==1&ScoreQ2r4h!=.)|(gender==2&ScoreQ2r4f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r4f ScoreResp_Q2_r4h if (gender==2&ScoreResp_Q2_r4h!=.)|(gender==1&ScoreResp_Q2_r4f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-4 depending on gender, size(med))  note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 224, women = 368", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fifth response (1 chance over: 10 million)")

graph box ScoreResp_Q2_r5 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r5h ScoreResp_Q2_r5f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r5h ScoreResp_Q2_r5f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r5h ScoreQ2r5f if (gender==1&ScoreQ2r5h!=.)|(gender==2&ScoreQ2r5f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r5f ScoreResp_Q2_r5h if (gender==2&ScoreResp_Q2_r5h!=.)|(gender==1&ScoreResp_Q2_r5f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-5 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 217, women = 353", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(, 16)
putdocx text ("Question III: A vaccine has been found. It can either eliminate any risk of being infected by the virus or make you die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question III- First response (1 chance over: 1 million)")

graph box ScoreResp_Q3_r1 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r1h ScoreResp_Q3_r1f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r1h ScoreResp_Q3_r1f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r1h ScoreQ3r1f if (gender==1&ScoreQ3r1h!=.)|(gender==2&ScoreQ3r1f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r1f ScoreResp_Q3_r1h if (gender==2&ScoreResp_Q3_r1h!=.)|(gender==1&ScoreResp_Q3_r1f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-1 depending on gender, size(med)) note("Number of observations for responses, men = 253, women = 414", size(small)) caption("Number of observations for predictions, men = 221, women = 370", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Second response (1 chance over: 300 000)")

graph box ScoreResp_Q3_r2 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r2h ScoreResp_Q3_r2f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r2h ScoreResp_Q3_r2f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r2h ScoreQ3r2f if (gender==1&ScoreQ3r2h!=.)|(gender==2&ScoreQ3r2f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r2f ScoreResp_Q3_r2h if (gender==2&ScoreResp_Q3_r2h!=.)|(gender==1&ScoreResp_Q3_r2f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-2 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 229, women = 378", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Third response (1 chance over: 100 000)")

graph box ScoreResp_Q3_r3 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r3h ScoreResp_Q3_r3f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r3h ScoreResp_Q3_r3f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r3h ScoreQ3r3f if (gender==1&ScoreQ3r3h!=.)|(gender==2&ScoreQ3r3f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r3f ScoreResp_Q3_r3h if (gender==2&ScoreResp_Q3_r3h!=.)|(gender==1&ScoreResp_Q3_r3f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-3 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 222, women = 371", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fourth response (1 chance over: 10 000)")

graph box ScoreResp_Q3_r4 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r4h ScoreResp_Q3_r4f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r4h ScoreResp_Q3_r4f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r4h ScoreQ3r4f if (gender==1&ScoreQ3r4h!=.)|(gender==2&ScoreQ3r4f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r4f ScoreResp_Q3_r4h if (gender==2&ScoreResp_Q3_r4h!=.)|(gender==1&ScoreResp_Q3_r4f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-4 depending on gender, size(med)) note("Number of observations for responses, men = 252, women = 413", size(small)) caption("Number of observations for predictions, men = 215, women = 354", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fifth response (1 chance over: 1 000)")

graph box ScoreResp_Q3_r5 if gender==1|gender==2, over(gender) ytitle(Score) ylabel(, labels) title(Prediction depending on the gender, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r5h ScoreResp_Q3_r5f if gender==1, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of men, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of M for W") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r5h ScoreResp_Q3_r5f if gender==2, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of women, size(medsmall)) legend(order(1 "Prediction of W for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r5h ScoreQ3r5f if (gender==1&ScoreQ3r5h!=.)|(gender==2&ScoreQ3r5f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of M for M" 2 "Prediction of W for W") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r5f ScoreResp_Q3_r5h if (gender==2&ScoreResp_Q3_r5h!=.)|(gender==1&ScoreResp_Q3_r5f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one gender for the other, size(medsmall)) legend(order(1 "Prediction of M for W" 2 "Prediction of W for M") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-5 depending on gender, size(med)) note("Number of observations for responses, men = 251, women = 414", size(small)) caption("Number of observations for predictions, men = 198, women = 322", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

// f to f, h to h...etc
putdocx pagebreak
putdocx paragraph, font(, 16) halign(center)
putdocx text ("Scores dependind on their field, with outliers"), bold
putdocx paragraph, halign(center) font(,16)
putdocx text ("Question I: ")

graph box ScoreResp_Q1 if moudur==1|moudur==0, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q1d ScoreResp_Q1f if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1)) 
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q1d ScoreResp_Q1f if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ1d ScoreQ1m if (moudur==0&ScoreQ1d!=.)|(moudur==1&ScoreQ1m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q1m ScoreResp_Q1d if (moudur==2&ScoreResp_Q1h!=.)|(moudur==1&ScoreResp_Q1f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question I depending on field, size(med)) note("Number of observations for responses, hard = 326, soft = 304", size(small)) caption("Number of observations for predictions, hard = 106, soft = 121", size(small))

graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(,16)
putdocx text ("Question II: A global vaccine has been found. It can either make the virus disappears forever or make the population die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question II- First response (1 chance over: 100 billion)")

graph box ScoreResp_Q2_r1 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r1d ScoreQ2r1m if (moudur==0&ScoreQ2r1d!=.)|(moudur==1&ScoreQ2r1m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if (moudur==1&ScoreResp_Q2_r1d!=.)|(moudur==0&ScoreResp_Q2_r1m!=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-1 depending on the field, size(med)) note("Number of observations for responses, hard = 326, soft = 303", size(small)) caption("Number of observations for predictions, hard = 256, soft = 267", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Second response (1 chance over: 10 billion)")

graph box ScoreResp_Q2_r2 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r2d ScoreResp_Q2_r2m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r2d ScoreResp_Q2_r2m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r2d ScoreQ2r2m if (moudur==0&ScoreQ2r2d!=.)|(moudur==1&ScoreQ2r2m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r2m ScoreResp_Q2_r2d if (moudur==1&ScoreResp_Q2_r2d!=.)|(moudur==0&ScoreResp_Q2_r2m !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-2 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 302", size(small)) caption("Number of observations for predictions, hard = 268, soft = 285", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Third response (1 chance over: 1 billion)")

graph box ScoreResp_Q2_r3 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r3d ScoreResp_Q2_r3m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r3d ScoreResp_Q2_r3m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r3d ScoreQ2r3m if (moudur==0&ScoreQ2r3d!=.)|(moudur==1&ScoreQ2r3m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for H") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r3m ScoreResp_Q2_r3d if (moudur==1&ScoreResp_Q2_r3d!=.)|(moudur==0&ScoreResp_Q2_r3m !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction ofHM for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-3 depending on the field, size(med))  note("Number of observations for responses, hard = 251, soft = 414", size(small)) caption("Number of observations for predictions, hard = 224, soft = 377", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fourth response (1 chance over: 100 million)")

graph box ScoreResp_Q2_r4 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r4d ScoreResp_Q2_r4m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r4d ScoreResp_Q2_r4m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r4d ScoreQ2r4m if (moudur==0&ScoreQ2r4d!=.)|(moudur==1&ScoreQ2r4m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r4m ScoreResp_Q2_r4d if (moudur==1&ScoreResp_Q2_r4d!=.)|(moudur==0&ScoreResp_Q2_r4m!=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-4 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 273, soft = 283", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fifth response (1 chance over: 10 million)")

graph box ScoreResp_Q2_r5 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r5d ScoreResp_Q2_r5m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r5d ScoreResp_Q2_r5m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r5d ScoreQ2r5m if (moudur==0&ScoreQ2r5d!=.)|(moudur==1&ScoreQ2r5m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r5m ScoreResp_Q2_r5d if (moudur==1&ScoreResp_Q2_r5d!=.)|(moudur==0&ScoreResp_Q2_r5m !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-5 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 260, soft = 276", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(, 16)
putdocx text ("Question III: A vaccine has been found. It can either eliminate any risk of being infected by the virus or make you die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question III- First response (1 chance over: 1 million)")

graph box ScoreResp_Q3_r1 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r1d ScoreResp_Q3_r1m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r1d ScoreResp_Q3_r1m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r1d ScoreQ3r1m if (moudur==0&ScoreQ3r1d!=.)|(moudur==1&ScoreQ3r1m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r1m ScoreResp_Q3_r1d if (moudur==1&ScoreResp_Q3_r1d!=.)|(moudur==0&ScoreResp_Q3_r1m !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-1 depending on the field, size(med)) note("Number of observations for responses, hard = 326, soft = 304", size(small)) caption("Number of observations for predictions, hard = 269, soft = 281", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Second response (1 chance over: 300 000)")

graph box ScoreResp_Q3_r2 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r2d ScoreResp_Q3_r2m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r2d ScoreResp_Q3_r2m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r2d ScoreQ3r2m if (moudur==0&ScoreQ3r2d!=.)|(moudur==1&ScoreQ3r2m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r2m ScoreResp_Q3_r2d if (moudur==1&ScoreResp_Q3_r2d!=.)|(moudur==0&ScoreResp_Q3_r2m!=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-2 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 276, soft = 291", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Third response (1 chance over: 100 000)")

graph box ScoreResp_Q3_r3 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r3d ScoreResp_Q3_r3m if moudur==0,  box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r3d ScoreResp_Q3_r3m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r3d ScoreQ3r3m if (moudur==0&ScoreQ3r3h!=.)|(moudur==1&ScoreQ3r3f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r3m ScoreResp_Q3_r3d if (moudur==1&ScoreResp_Q3_r3d!=.)|(moudur==0&ScoreResp_Q3_r3m !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-3 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 271, soft = 283", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fourth response (1 chance over: 10 000)")

graph box ScoreResp_Q3_r4 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r4d ScoreResp_Q3_r4m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r4d ScoreResp_Q3_r4m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r4d ScoreQ3r4m if (moudur==0&ScoreQ3r4d!=.)|(moudur==1&ScoreQ3r4m!=.), ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r4m ScoreResp_Q3_r4d if (moudur==1&ScoreResp_Q3_r4d!=.)|(moudur==0&ScoreResp_Q3_r4m!=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-4 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 263, soft = 270", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fifth response (1 chance over: 1 000)")

graph box ScoreResp_Q3_r5 if moudur==0|moudur==1, over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r5d ScoreResp_Q3_r5m if moudur==0, box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r5d ScoreResp_Q3_r5m if moudur==1, box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r5d ScoreQ3r5m if (moudur==0&ScoreQ3r5h!=.)|(moudur==1&ScoreQ3r5f!=.), ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r5m ScoreResp_Q3_r5d if (moudur==1&ScoreResp_Q3_r5h!=.)|(moudur==0&ScoreResp_Q3_r5f !=.), box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-5 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 245, soft = 311", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

// f to f, h to h...etc
putdocx pagebreak
putdocx paragraph, font(, 16) halign(center)
putdocx text ("Scores dependind on their field, without outliers"), bold
putdocx paragraph, halign(center) font(,16)
putdocx text ("Question I: ")

graph box ScoreResp_Q1 if moudur==1|moudur==0,over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) nooutsides
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q1d ScoreResp_Q1f if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1)) 
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q1d ScoreResp_Q1f if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ1d ScoreQ1m if (moudur==0&ScoreQ1d!=.)|(moudur==1&ScoreQ1m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q1m ScoreResp_Q1d if (moudur==2&ScoreResp_Q1h!=.)|(moudur==1&ScoreResp_Q1f !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question I depending on field, size(med)) note("Number of observations for responses, hard = 326, soft = 304", size(small)) caption("Number of observations for predictions, hard = 106, soft = 121", size(small))

graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(,16)
putdocx text ("Question II: A global vaccine has been found. It can either make the virus disappears forever or make the population die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question II- First response (1 chance over: 100 billion)")

graph box ScoreResp_Q2_r1 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r1d ScoreQ2r1m if (moudur==0&ScoreQ2r1d!=.)|(moudur==1&ScoreQ2r1m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r1d ScoreResp_Q2_r1m if (moudur==1&ScoreResp_Q2_r1d!=.)|(moudur==0&ScoreResp_Q2_r1m!=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-1 depending on the field, size(med)) note("Number of observations for responses, hard = 326, soft = 303", size(small)) caption("Number of observations for predictions, hard = 256, soft = 267", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Second response (1 chance over: 10 billion)")

graph box ScoreResp_Q2_r2 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r2d ScoreResp_Q2_r2m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r2d ScoreResp_Q2_r2m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r2d ScoreQ2r2m if (moudur==0&ScoreQ2r2d!=.)|(moudur==1&ScoreQ2r2m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r2m ScoreResp_Q2_r2d if (moudur==1&ScoreResp_Q2_r2d!=.)|(moudur==0&ScoreResp_Q2_r2m !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-2 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 302", size(small)) caption("Number of observations for predictions, hard = 268, soft = 285", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Third response (1 chance over: 1 billion)")

graph box ScoreResp_Q2_r3 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r3d ScoreResp_Q2_r3m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r3d ScoreResp_Q2_r3m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r3d ScoreQ2r3m if (moudur==0&ScoreQ2r3d!=.)|(moudur==1&ScoreQ2r3m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for H") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r3m ScoreResp_Q2_r3d if (moudur==1&ScoreResp_Q2_r3d!=.)|(moudur==0&ScoreResp_Q2_r3m !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction ofHM for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-3 depending on the field, size(med))  note("Number of observations for responses, hard = 251, soft = 414", size(small)) caption("Number of observations for predictions, hard = 224, soft = 377", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fourth response (1 chance over: 100 million)")

graph box ScoreResp_Q2_r4 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r4d ScoreResp_Q2_r4m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r4d ScoreResp_Q2_r4m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r4d ScoreQ2r4m if (moudur==0&ScoreQ2r4d!=.)|(moudur==1&ScoreQ2r4m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r4m ScoreResp_Q2_r4d if (moudur==1&ScoreResp_Q2_r4d!=.)|(moudur==0&ScoreResp_Q2_r4m!=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-4 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 273, soft = 283", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question II- Fifth response (1 chance over: 10 million)")

graph box ScoreResp_Q2_r5 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q2_r5d ScoreResp_Q2_r5m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q2_r5d ScoreResp_Q2_r5m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ2r5d ScoreQ2r5m if (moudur==0&ScoreQ2r5d!=.)|(moudur==1&ScoreQ2r5m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q2_r5m ScoreResp_Q2_r5d if (moudur==1&ScoreResp_Q2_r5d!=.)|(moudur==0&ScoreResp_Q2_r5m !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question II-5 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 260, soft = 276", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, halign(center) font(, 16)
putdocx text ("Question III: A vaccine has been found. It can either eliminate any risk of being infected by the virus or make you die immediately. Would you use the vaccine if it probability is: "), bold
putdocx paragraph, font(,16)
putdocx text ("Question III- First response (1 chance over: 1 million)")

graph box ScoreResp_Q3_r1 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r1d ScoreResp_Q3_r1m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r1d ScoreResp_Q3_r1m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r1d ScoreQ3r1m if (moudur==0&ScoreQ3r1d!=.)|(moudur==1&ScoreQ3r1m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r1m ScoreResp_Q3_r1d if (moudur==1&ScoreResp_Q3_r1d!=.)|(moudur==0&ScoreResp_Q3_r1m !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-1 depending on the field, size(med)) note("Number of observations for responses, hard = 326, soft = 304", size(small)) caption("Number of observations for predictions, hard = 269, soft = 281", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Second response (1 chance over: 300 000)")

graph box ScoreResp_Q3_r2 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r2d ScoreResp_Q3_r2m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r2d ScoreResp_Q3_r2m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r2d ScoreQ3r2m if (moudur==0&ScoreQ3r2d!=.)|(moudur==1&ScoreQ3r2m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r2m ScoreResp_Q3_r2d if (moudur==1&ScoreResp_Q3_r2d!=.)|(moudur==0&ScoreResp_Q3_r2m!=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-2 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 276, soft = 291", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Third response (1 chance over: 100 000)")

graph box ScoreResp_Q3_r3 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r3d ScoreResp_Q3_r3m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r3d ScoreResp_Q3_r3m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r3d ScoreQ3r3m if (moudur==0&ScoreQ3r3h!=.)|(moudur==1&ScoreQ3r3f!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r3m ScoreResp_Q3_r3d if (moudur==1&ScoreResp_Q3_r3d!=.)|(moudur==0&ScoreResp_Q3_r3m !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-3 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 271, soft = 283", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fourth response (1 chance over: 10 000)")

graph box ScoreResp_Q3_r4 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r4d ScoreResp_Q3_r4m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r4d ScoreResp_Q3_r4m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r4d ScoreQ3r4m if (moudur==0&ScoreQ3r4d!=.)|(moudur==1&ScoreQ3r4m!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each field, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r4m ScoreResp_Q3_r4d if (moudur==1&ScoreResp_Q3_r4d!=.)|(moudur==0&ScoreResp_Q3_r4m!=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-4 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 263, soft = 270", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx paragraph, font(,16)
putdocx text ("Question III- Fifth response (1 chance over: 1 000)")

graph box ScoreResp_Q3_r5 if moudur==0|moudur==1,nooutsides over(moudur) ytitle(Score) ylabel(, labels) title(Prediction depending on the field, size(medsmall)) 
graph save h1, replace
graph export h1.png, replace
graph box ScoreResp_Q3_r5d ScoreResp_Q3_r5m if moudur==0,nooutsides box(2, fcolor(dkorange) lcolor(dkorange)) marker(2, mcolor(dkorange)) ytitle(Score) ylabel(, labels) title(Prediction of hard sciences, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of H for S") size(small) cols(1))
graph save c3, replace
graph export c3.png, replace
graph box ScoreResp_Q3_r5d ScoreResp_Q3_r5m if moudur==1,nooutsides box(1, fcolor(dkgreen) lcolor(dkgreen))  marker(1, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediction of soft sciences, size(medsmall)) legend(order(1 "Prediction of S for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c4, replace
graph export c4.png, replace
graph box ScoreQ3r5d ScoreQ3r5m if (moudur==0&ScoreQ3r5h!=.)|(moudur==1&ScoreQ3r5f!=.),nooutsides ytitle(Score) ylabel(, labels) title(Prediction of each gender, size(medsmall)) legend(order(1 "Prediction of H for H" 2 "Prediction of S for S") size(small) cols(1))
graph save c5, replace
graph export c5.png, replace
graph box ScoreResp_Q3_r5m ScoreResp_Q3_r5d if (moudur==1&ScoreResp_Q3_r5h!=.)|(moudur==0&ScoreResp_Q3_r5f !=.),nooutsides box(1, fcolor(dkorange) lcolor(dkorange)) box(2, fcolor(dkgreen) lcolor(dkgreen)) marker(1, mcolor(dkorange)) marker(2, mcolor(dkgreen)) ytitle(Score) ylabel(, labels) title(Prediciton of one field for the other, size(medsmall)) legend(order(1 "Prediction of H for S" 2 "Prediction of S for H") size(small) cols(1))
graph save c6, replace
graph export c6.png, replace

graph combine h1.gph c3.gph c4.gph c5.gph c6.gph, title(Predictions for Question III-5 depending on the field, size(med)) note("Number of observations for responses, hard = 325, soft = 303", size(small)) caption("Number of observations for predictions, hard = 245, soft = 311", size(small))
graph export b6-c2.png, replace
putdocx paragraph, halign(center)
putdocx image b6-c2.png

putdocx save prelec2.docx, replace

/*
graph twoway lfit ScoreResp_Q1 age || scatter ScoreResp_Q1 age

graph box ScoreResp_Q1, over(q1)
graph box ScoreResp_Q2_r1, over(q2_r1)
graph box ScoreResp_Q2_r2, over(q2_r2)
graph box ScoreResp_Q2_r3, over(q2_r3)
graph box ScoreResp_Q2_r4, over(q2_r4)
graph box ScoreResp_Q2_r5, over(q2_r5)
*/
