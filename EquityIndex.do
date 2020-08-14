//Equity index

keep if nbErrpii==0
keep if pii_q1_a!=.


//pii_q1
tab pii_q1_a
tab pii_q1_b

		//with exp de val abs
drop if sum_IIQ1!=100
gen equityQ1a=exp(abs(pii_q1_a-(100/3)))-1
gen equityQ1b=exp(abs(pii_q1_b-(200/3)))-1
gen equityQ1=equityQ1a+equityQ1b

		//division
gen EquityQ1a=abs((pii_q1_a-(100/3))/(100-(100/3)))
replace EquityQ1a=0 if pii_q1_a==33|pii_q1_a==34
gen EquityQ1b=abs(((200/3)-pii_q1_b)/(200/3))
replace EquityQ1b=0 if pii_q1_b==66|pii_q1_b==67
egen EquityQ1=rowmean(EquityQ1a-EquityQ1b)

gen EquityQ3a=abs((pii_q3_a-(100/3))/(100-(100/3)))
replace EquityQ3a=0 if pii_q3_a==33|pii_q3_a==34
gen EquityQ3b=abs(((200/3)-pii_q3_b)/(200/3))
replace EquityQ3b=0 if pii_q3_b==66|pii_q3_b==67
egen EquityQ3=rowmean(EquityQ3a-EquityQ3b)

gen EquityQ4a=abs((pii_q4_a-20)/(100-20))
gen EquityQ4b=abs((pii_q4_a-20)/(100-20))
gen EquityQ4c=abs((60-pii_q3_b)/60)
egen EquityQ4=rowmean(EquityQ4a-EquityQ4c)

	//Diff equity pour Q5
//Equity en nombre de malades par village
gen EquityQ5ma=abs((75-pii_q5_a)/75)
gen EquityQ5mb=abs((pii_q5_b-25)/(100-25))
egen EquityQ5m=rowmean(EquityQ5ma-EquityQ5mb)
//Equity en proportion du nombre d'habitants LE PIRE
gen EquityQ5ha=abs(((200/3)-pii_q5_b)/(200/3))
replace EquityQ5ha=0 if pii_q5_a==66|pii_q5_a==67
gen EquityQ5hb=abs((pii_q5_b-(100/3))/(100-(100/3)))
replace EquityQ5hb=0 if pii_q5_b==33|pii_q5_b==34
egen EquityQ5h=rowmean(EquityQ5ha-EquityQ5hb)
//Equity en proportion du nombre de malades dans chaque village LE PLUS LOGIQUE
gen EquityQ5pma=abs((57-pii_q5_a)/57)
gen EquityQ5pmb=abs((pii_q5_b-43)/(100-43))
egen EquityQ5pm=rowmean(EquityQ5pma-EquityQ5pmb)

//Diff equity pour Q6
//Equity proportion malades (donc meme proportion sauvés dans chaque village par rapport au nombre d'habitant
gen EquityQ6pma=abs((57-pii_q6_a)/57)
gen EquityQ6pmb=abs((pii_q6_b-43)/(100-43))
egen EquityQ6pm=rowmean(EquityQ6pma-EquityQ6pmb)
//Equity en proportion de genre (as many women as men saved, without considering size of the village)
gen EquityQ6pga=abs((50-pii_q6_a)/50)
gen EquityQ6pgb=abs((pii_q6_b-50)/(100-50))
egen EquityQ6pg=rowmean(EquityQ6pga-EquityQ6pgb)

// + on s'éloigne, moins on est équitable.
gen EquityTot=EquityQ1+EquityQ3+EquityQ4+EquityQ5pm+EquityQ6pm





