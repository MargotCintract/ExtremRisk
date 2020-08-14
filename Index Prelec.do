		//INDEX PRLEC

cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data\dataset and do file"
keep if nbErrTot==0

		//Q1
gen ResQ1a=.
replace ResQ1a=1 if q1=="No"
replace ResQ1a=0 if q1=="Yes but it has no consequences"|q1=="Yes, it has consequences"
gen ResQ1b=.
replace ResQ1b=1 if q1=="Yes but it has no consequences"
replace ResQ1b=0 if q1=="Yes, it has consequences"|q1=="No"
gen ResQ1c=.
replace ResQ1c=1 if q1=="Yes, it has consequences"
replace ResQ1c=0 if q1=="Yes but it has no consequences"|q1=="No"

	//Q1 a
//x bar pop
egen xQ1a=mean(ResQ1a)
//x bar femmes
egen xQ1af=mean(ResQ1a) if gender==2
gen Xbar_Q1af=xQ1af
replace Xbar_Q1af=Xbar_Q1af[_n-1] if Xbar_Q1af==.
replace Xbar_Q1af=. if gender==.
//x bar hommes
egen xQ1ah=mean(ResQ1a) if gender==1
gen Xbar_Q1ah=xQ1ah
replace Xbar_Q1ah=Xbar_Q1ah[_n-1] if Xbar_Q1ah==.
replace Xbar_Q1ah=. if gender==.
//x bar mou
egen xQ1am=mean(ResQ1a) if moudur==1
gen Xbar_Q1am=xQ1am
replace Xbar_Q1am=Xbar_Q1am[_n-1] if Xbar_Q1am==.
replace Xbar_Q1am=. if moudur==.
//x bar dur
egen xQ1ad=mean(ResQ1a) if moudur==0
gen Xbar_Q1ad=xQ1ad
replace Xbar_Q1ad=Xbar_Q1ad[_n-1] if Xbar_Q1ad==.
replace Xbar_Q1ad=. if moudur==.

//y bar = exp((sum of logy)/n) POP
gen log_att_q1_a=log(att_q1_a)
egen logyQ1a=mean(log_att_q1_a)
//y bar = exp((sum of logy)/n) f
gen log_att_q1_af=log(att_q1_a) if gender==2
egen logyQ1af=mean(log_att_q1_a) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q1_ah=log(att_q1_a) if gender==1
egen logyQ1ah=mean(log_att_q1_a) if gender==1
//y bar = exp((sum of logy)/n) m
gen log_att_q1_am=log(att_q1_a) if moudur==1
egen logyQ1am=mean(log_att_q1_a) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q1_ad=log(att_q1_a) if moudur==0
egen logyQ1ad=mean(log_att_q1_a) if moudur==0

//mettre pour tous le score f et h
gen Ybar_Q1af=logyQ1af
replace Ybar_Q1af=Ybar_Q1af[_n-1] if Ybar_Q1af==.
replace Ybar_Q1af=. if gender==.

gen Ybar_Q1ah=logyQ1ah
replace Ybar_Q1ah=Ybar_Q1ah[_n-1] if Ybar_Q1ah==.
replace Ybar_Q1ah=. if gender==.

gen Ybar_Q1am=logyQ1am
replace Ybar_Q1am=Ybar_Q1af[_n-1] if Ybar_Q1am==.
replace Ybar_Q1am=. if moudur==.

gen Ybar_Q1ad=logyQ1ad
replace Ybar_Q1ad=Ybar_Q1ah[_n-1] if Ybar_Q1ad==.
replace Ybar_Q1ad=. if moudur==.

//Information Score = log (x bar/ y bar) POP
gen InfoScore_Q1a=log(xQ1a*100/exp(logyQ1a))
//Information Score = log (x bar/ y bar) f to f
gen InfoScore_Q1af=log(Xbar_Q1af*100/exp(Ybar_Q1af)) 
//Information Score = log (x bar/ y bar) h to h
gen InfoScore_Q1ah=log(Xbar_Q1ah*100/exp(Ybar_Q1ah)) 
//Information Score = log (x bar/ y bar) m to m
gen InfoScore_Q1am=log(Xbar_Q1am*100/exp(Ybar_Q1am)) 
//Information Score = log (x bar/ y bar) d tod
gen InfoScore_Q1ad=log(Xbar_Q1ad*100/exp(Ybar_Q1ad)) 

//Score for respondent
gen ScoreResp_Q1a=(ResQ1a*InfoScore_Q1a)+((xQ1a*100)*log(att_q1_a/(xQ1a*100))) if ResQ1a!=. 
// f to f
gen ScoreResp_Q1af=(ResQ1a*InfoScore_Q1af)+((Xbar_Q1af*100)*log(att_q1_a/(Xbar_Q1af*100))) if ResQ1a!=.&(gender==2|gender==1)
//m to m
gen ScoreResp_Q1ah=(ResQ1a*InfoScore_Q1ah)+((Xbar_Q1ah*100)*log(att_q1_a/(Xbar_Q1ah*100))) if ResQ1a!=.&(gender==2|gender==1)
// m
gen ScoreResp_Q1am=(ResQ1a*InfoScore_Q1am)+((Xbar_Q1am*100)*log(att_q1_a/(Xbar_Q1am*100))) if ResQ1a!=.&(moudur==0|moudur==1)
//d
gen ScoreResp_Q1ad=(ResQ1a*InfoScore_Q1ad)+((Xbar_Q1ad*100)*log(att_q1_a/(Xbar_Q1ad*100))) if ResQ1a!=.&(moudur==0|moudur==1)

	//Q1 - b
//x bar
egen xQ1b=mean(ResQ1b)
//x bar femmes
egen xQ1bf=mean(ResQ1b) if gender==2
//x bar hommes
egen xQ1bh=mean(ResQ1b) if gender==1
//x bar m
egen xQ1bm=mean(ResQ1b) if moudur==1
//x bar d
egen xQ1bd=mean(ResQ1b) if moudur==0

//mettre pour tous le score f et h
gen Xbar_Q1bf=xQ1bf
replace Xbar_Q1bf=Xbar_Q1bf[_n-1] if Xbar_Q1bf==.
replace Xbar_Q1bf=. if gender==.
gen Xbar_Q1bh=xQ1bh
replace Xbar_Q1bh=Xbar_Q1bh[_n-1] if Xbar_Q1bh==.
replace Xbar_Q1bh=. if gender==.

gen Xbar_Q1bm=xQ1bm
replace Xbar_Q1bm=Xbar_Q1bm[_n-1] if Xbar_Q1bm==.
replace Xbar_Q1bm=. if moudur==.
gen Xbar_Q1bd=xQ1bd
replace Xbar_Q1bd=Xbar_Q1bd[_n-1] if Xbar_Q1bd==.
replace Xbar_Q1bd=. if moudur==.

//y bar = exp((sum of logy)/n)
gen log_att_q1_b=log(att_q1_b)
egen logyQ1b=mean(log_att_q1_b)
//y bar = exp((sum of logy)/n) f
gen log_att_q1_bf=log(att_q1_b) if gender==2
egen logyQ1bf=mean(log_att_q1_b) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q1_bh=log(att_q1_b) if gender==1
egen logyQ1bh=mean(log_att_q1_b) if gender==1
//y bar = exp((sum of logy)/n) m
gen log_att_q1_bm=log(att_q1_b) if moudur==1
egen logyQ1bm=mean(log_att_q1_b) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q1_bd=log(att_q1_b) if moudur==0
egen logyQ1bd=mean(log_att_q1_b) if moudur==0

//mettre pour tous le score f et h
gen Ybar_Q1bf=logyQ1bf
replace Ybar_Q1bf=Ybar_Q1bf[_n-1] if Ybar_Q1bf==.
replace Ybar_Q1bf=. if gender==.
gen Ybar_Q1bh=logyQ1bh
replace Ybar_Q1bh=Ybar_Q1bh[_n-1] if Ybar_Q1bh==.
replace Ybar_Q1bh=. if gender==.

gen Ybar_Q1bm=logyQ1bm
replace Ybar_Q1bm=Ybar_Q1bm[_n-1] if Ybar_Q1bm==.
replace Ybar_Q1bm=. if moudur==.
gen Ybar_Q1bd=logyQ1bd
replace Ybar_Q1bd=Ybar_Q1bd[_n-1] if Ybar_Q1bd==.
replace Ybar_Q1bd=. if moudur==.

//Information Score 
gen InfoScore_Q1b=log(xQ1b*100/exp(logyQ1b))
gen InfoScore_Q1bf=log(Xbar_Q1bf*100/exp(Ybar_Q1bf))
gen InfoScore_Q1bh=log(Xbar_Q1bh*100/exp(Ybar_Q1bh))
gen InfoScore_Q1bm=log(Xbar_Q1bm*100/exp(Ybar_Q1bm))
gen InfoScore_Q1bd=log(Xbar_Q1bd*100/exp(Ybar_Q1bd))

//Score for respondent
gen ScoreResp_Q1b=(ResQ1b*InfoScore_Q1b)+((xQ1b*100)*log(att_q1_b/(xQ1b*100))) if ResQ1b!=. 
gen ScoreResp_Q1bf=(ResQ1b*InfoScore_Q1bf)+((Xbar_Q1bf*100)*log(att_q1_b/(Xbar_Q1bf*100))) if ResQ1b!=.&(gender==2|gender==1)
gen ScoreResp_Q1bh=(ResQ1b*InfoScore_Q1bh)+((Xbar_Q1bh*100)*log(att_q1_b/(Xbar_Q1bh*100))) if ResQ1b!=.&(gender==2|gender==1)
gen ScoreResp_Q1bm=(ResQ1b*InfoScore_Q1bm)+((Xbar_Q1bm*100)*log(att_q1_b/(Xbar_Q1bm*100))) if ResQ1b!=.&(moudur==1|moudur==0)
gen ScoreResp_Q1bd=(ResQ1b*InfoScore_Q1bd)+((Xbar_Q1bd*100)*log(att_q1_b/(Xbar_Q1bd*100))) if ResQ1b!=.&(moudur==1|moudur==0)

	//Q1 - c
//x bar
egen xQ1c=mean(ResQ1c)
egen xQ1cf=mean(ResQ1c) if gender==2
egen xQ1ch=mean(ResQ1c) if gender==1
egen xQ1cm=mean(ResQ1c) if moudur==1
egen xQ1cd=mean(ResQ1c) if moudur==0

//mettre pour tous le score f et h
gen Xbar_Q1cf=xQ1cf
replace Xbar_Q1cf=Xbar_Q1cf[_n-1] if Xbar_Q1cf==.
replace Xbar_Q1cf=. if gender==.
gen Xbar_Q1ch=xQ1ch
replace Xbar_Q1ch=Xbar_Q1ch[_n-1] if Xbar_Q1ch==.
replace Xbar_Q1ch=. if gender==.
gen Xbar_Q1cm=xQ1cm
replace Xbar_Q1cm=Xbar_Q1cm[_n-1] if Xbar_Q1cm==.
replace Xbar_Q1cm=. if moudur==.
gen Xbar_Q1cd=xQ1cd
replace Xbar_Q1cd=Xbar_Q1cd[_n-1] if Xbar_Q1cd==.
replace Xbar_Q1cd=. if moudur==.


//y bar = exp((sum of logy)/n)
gen log_att_q1_c=log(att_q1_c)
egen logyQ1c=mean(log_att_q1_c)
//y bar = exp((sum of logy)/n) f
gen log_att_q1_cf=log(att_q1_c) if gender==2
egen logyQ1cf=mean(log_att_q1_c) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q1_ch=log(att_q1_c) if gender==1
egen logyQ1ch=mean(log_att_q1_c) if gender==1
//y bar = exp((sum of logy)/n) m
gen log_att_q1_cm=log(att_q1_c) if moudur==1
egen logyQ1cm=mean(log_att_q1_c) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q1_cd=log(att_q1_c) if moudur==0
egen logyQ1cd=mean(log_att_q1_c) if moudur==0

//mettre pour tous le score f et h
gen Ybar_Q1cf=logyQ1cf
replace Ybar_Q1cf=Ybar_Q1cf[_n-1] if Ybar_Q1cf==.
replace Ybar_Q1cf=. if gender==.
gen Ybar_Q1ch=logyQ1ch
replace Ybar_Q1ch=Ybar_Q1ch[_n-1] if Ybar_Q1ch==.
replace Ybar_Q1ch=. if gender==.

gen Ybar_Q1cm=logyQ1cm
replace Ybar_Q1cm=Ybar_Q1cm[_n-1] if Ybar_Q1cm==.
replace Ybar_Q1cm=. if moudur==.
gen Ybar_Q1cd=logyQ1cd
replace Ybar_Q1cd=Ybar_Q1cd[_n-1] if Ybar_Q1cd==.
replace Ybar_Q1cd=. if moudur==.

//Information Score = log (x bar/ y bar)
gen InfoScore_Q1c=log(xQ1c*100/exp(logyQ1c))
gen InfoScore_Q1cf=log(Xbar_Q1cf*100/exp(Ybar_Q1cf))
gen InfoScore_Q1ch=log(Xbar_Q1ch*100/exp(Ybar_Q1ch))
gen InfoScore_Q1cm=log(Xbar_Q1cm*100/exp(Ybar_Q1cm))
gen InfoScore_Q1cd=log(Xbar_Q1cd*100/exp(Ybar_Q1cd))

//Score for respondent
gen ScoreResp_Q1c=(ResQ1c*InfoScore_Q1c)+((xQ1c*100)*log(att_q1_c/(xQ1c*100))) if ResQ1c!=. 
gen ScoreResp_Q1cf=(ResQ1c*InfoScore_Q1cf)+((Xbar_Q1cf*100)*log(att_q1_c/(Xbar_Q1cf*100))) if ResQ1c!=.&(gender==2|gender==1) 
gen ScoreResp_Q1ch=(ResQ1c*InfoScore_Q1ch)+((Xbar_Q1ch*100)*log(att_q1_c/(Xbar_Q1ch*100))) if ResQ1c!=.&(gender==2|gender==1) 
gen ScoreResp_Q1cm=(ResQ1c*InfoScore_Q1cm)+((Xbar_Q1cm*100)*log(att_q1_c/(Xbar_Q1cm*100))) if ResQ1c!=.&(moudur==0|moudur==1) 
gen ScoreResp_Q1cd=(ResQ1c*InfoScore_Q1cd)+((Xbar_Q1cd*100)*log(att_q1_c/(Xbar_Q1cd*100))) if ResQ1c!=.&(moudur==0|moudur==1) 

gen ScoreResp_Q1=ScoreResp_Q1c+ScoreResp_Q1a+ScoreResp_Q1b
gen ScoreResp_Q1f=ScoreResp_Q1cf+ScoreResp_Q1af+ScoreResp_Q1bf
gen ScoreResp_Q1h=ScoreResp_Q1ch+ScoreResp_Q1ah+ScoreResp_Q1bh
gen ScoreResp_Q1m=ScoreResp_Q1cm+ScoreResp_Q1am+ScoreResp_Q1bm
gen ScoreResp_Q1d=ScoreResp_Q1cd+ScoreResp_Q1ad+ScoreResp_Q1bd

//delete what is unuseful
replace logyQ1a=. if att_q1_a==.
replace logyQ1b=. if att_q1_b==.
replace logyQ1c=. if att_q1_c==.

replace xQ1a=. if att_q1_a==.
replace xQ1b=. if att_q1_b==.
replace xQ1c=. if att_q1_c==.

replace InfoScore_Q1a=. if att_q1_a==.
replace InfoScore_Q1b=. if att_q1_b==.
replace InfoScore_Q1c=. if att_q1_c==.

				//Q2
		
		//Q2, r1
gen Res_Q2_r1_a=.
replace Res_Q2_r1_a=1 if q2_r1=="Yes"
replace Res_Q2_r1_a=0 if q2_r1=="No"
label var Res_Q2_r1_a "Responded Yes to Q2_r1 (1/0)"

gen Res_Q2_r1_b=.
replace Res_Q2_r1_b=1 if q2_r1=="No"
replace Res_Q2_r1_b=0 if q2_r1=="Yes"
label var Res_Q2_r1_b "Responded No to Q2_r1 (1/0)"

//Q2 r1 a
//x bar
egen xQ2_r1_a=mean(Res_Q2_r1_a)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r1_a=log(att_q2_r1_a)
egen logy_Q2_r1_a=mean(log_att_q2_r1_a)

//x bar femmes
egen xQ2_r1_af=mean(Res_Q2_r1_a) if gender==2
//x bar hommes
egen xQ2_r1_ah=mean(Res_Q2_r1_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r1_af=log(att_q2_r1_a) if gender==2
egen logy_Q2_r1_af=mean(log_att_q2_r1_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r1_ah=log(att_q2_r1_a) if gender==1
egen logy_Q2_r1_ah=mean(log_att_q2_r1_ah) if gender==1

//x bar m
egen xQ2_r1_am=mean(Res_Q2_r1_a) if moudur==1
//x bar d
egen xQ2_r1_ad=mean(Res_Q2_r1_a) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r1_am=log(att_q2_r1_a) if moudur==1
egen logy_Q2_r1_am=mean(log_att_q2_r1_am) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r1_ad=log(att_q2_r1_a) if moudur==0
egen logy_Q2_r1_ad=mean(log_att_q2_r1_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r1_af=xQ2_r1_af[_n-1] if xQ2_r1_af==.
replace xQ2_r1_af=. if gender==.
replace xQ2_r1_ah=xQ2_r1_ah[_n-1] if xQ2_r1_ah==.
replace xQ2_r1_ah=. if gender==.
replace logy_Q2_r1_af=logy_Q2_r1_af[_n-1] if logy_Q2_r1_af==.
replace logy_Q2_r1_af=. if gender==.
replace logy_Q2_r1_ah=logy_Q2_r1_ah[_n-1] if logy_Q2_r1_ah==.
replace logy_Q2_r1_ah=. if gender==.

replace xQ2_r1_am=xQ2_r1_am[_n-1] if xQ2_r1_am==.
replace xQ2_r1_am=. if moudur==.
replace xQ2_r1_ad=xQ2_r1_ad[_n-1] if xQ2_r1_ad==.
replace xQ2_r1_ad=. if moudur==.
replace logy_Q2_r1_am=logy_Q2_r1_am[_n-1] if logy_Q2_r1_am==.
replace logy_Q2_r1_am=. if moudur==.
replace logy_Q2_r1_ad=logy_Q2_r1_ad[_n-1] if logy_Q2_r1_ad==.
replace logy_Q2_r1_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r1_a=(Res_Q2_r1_a*(log(xQ2_r1_a*100/exp(logy_Q2_r1_a))))+((xQ2_r1_a*100)*log(att_q2_r1_a/(xQ2_r1_a*100)))
gen ScoreResp_Q2_r1_af=(Res_Q2_r1_a*(log(xQ2_r1_af*100/exp(logy_Q2_r1_af))))+((xQ2_r1_af*100)*log(att_q2_r1_a/(xQ2_r1_af*100))) if gender==2|gender==1
gen ScoreResp_Q2_r1_ah=(Res_Q2_r1_a*(log(xQ2_r1_ah*100/exp(logy_Q2_r1_ah))))+((xQ2_r1_ah*100)*log(att_q2_r1_a/(xQ2_r1_ah*100))) if gender==2|gender==1
gen ScoreResp_Q2_r1_am=(Res_Q2_r1_a*(log(xQ2_r1_am*100/exp(logy_Q2_r1_am))))+((xQ2_r1_am*100)*log(att_q2_r1_a/(xQ2_r1_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r1_ad=(Res_Q2_r1_a*(log(xQ2_r1_ad*100/exp(logy_Q2_r1_ad))))+((xQ2_r1_ad*100)*log(att_q2_r1_a/(xQ2_r1_ad*100))) if moudur==0|moudur==1

//Q2 r1 b
//x bar
egen xQ2_r1_b=mean(Res_Q2_r1_b)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r1_b=log(att_q2_r1_b)
egen logy_Q2_r1_b=mean(log_att_q2_r1_b)

//x bar femmes
egen xQ2_r1_bf=mean(Res_Q2_r1_b) if gender==2
//x bar hommes
egen xQ2_r1_bh=mean(Res_Q2_r1_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r1_bf=log(att_q2_r1_b) if gender==2
egen logy_Q2_r1_bf=mean(log_att_q2_r1_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r1_bh=log(att_q2_r1_b) if gender==1
egen logy_Q2_r1_bh=mean(log_att_q2_r1_bh) if gender==1

//x bar m
egen xQ2_r1_bm=mean(Res_Q2_r1_b) if moudur==1
//x bar d
egen xQ2_r1_bd=mean(Res_Q2_r1_b) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r1_bm=log(att_q2_r1_b) if moudur==1
egen logy_Q2_r1_bm=mean(log_att_q2_r1_bm) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r1_bd=log(att_q2_r1_b) if moudur==0
egen logy_Q2_r1_bd=mean(log_att_q2_r1_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r1_bf=xQ2_r1_bf[_n-1] if xQ2_r1_bf==.
replace xQ2_r1_bf=. if gender==.
replace xQ2_r1_bh=xQ2_r1_bh[_n-1] if xQ2_r1_bh==.
replace xQ2_r1_bh=. if gender==.
replace logy_Q2_r1_bf=logy_Q2_r1_bf[_n-1] if logy_Q2_r1_bf==.
replace logy_Q2_r1_bf=. if gender==.
replace logy_Q2_r1_bh=logy_Q2_r1_bh[_n-1] if logy_Q2_r1_bh==.
replace logy_Q2_r1_bh=. if gender==.

replace xQ2_r1_bm=xQ2_r1_bm[_n-1] if xQ2_r1_bm==.
replace xQ2_r1_bm=. if moudur==.
replace xQ2_r1_bd=xQ2_r1_bd[_n-1] if xQ2_r1_bd==.
replace xQ2_r1_bd=. if moudur==.
replace logy_Q2_r1_bm=logy_Q2_r1_bm[_n-1] if logy_Q2_r1_bm==.
replace logy_Q2_r1_bm=. if moudur==.
replace logy_Q2_r1_bd=logy_Q2_r1_bd[_n-1] if logy_Q2_r1_bd==.
replace logy_Q2_r1_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r1_b=(Res_Q2_r1_b*(log(xQ2_r1_b*100/exp(logy_Q2_r1_b))))+((xQ2_r1_b*100)*log(att_q2_r1_b/(xQ2_r1_b*100)))
gen ScoreResp_Q2_r1_bf=(Res_Q2_r1_b*(log(xQ2_r1_bf*100/exp(logy_Q2_r1_bf))))+((xQ2_r1_bf*100)*log(att_q2_r1_b/(xQ2_r1_bf*100))) if gender==2|gender==1
gen ScoreResp_Q2_r1_bh=(Res_Q2_r1_b*(log(xQ2_r1_bh*100/exp(logy_Q2_r1_bh))))+((xQ2_r1_bh*100)*log(att_q2_r1_b/(xQ2_r1_bh*100))) if gender==2|gender==1
gen ScoreResp_Q2_r1_bm=(Res_Q2_r1_b*(log(xQ2_r1_bm*100/exp(logy_Q2_r1_bm))))+((xQ2_r1_bm*100)*log(att_q2_r1_b/(xQ2_r1_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r1_bd=(Res_Q2_r1_b*(log(xQ2_r1_bd*100/exp(logy_Q2_r1_bd))))+((xQ2_r1_bd*100)*log(att_q2_r1_b/(xQ2_r1_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q2_r1=ScoreResp_Q2_r1_b+ScoreResp_Q2_r1_a
gen ScoreResp_Q2_r1f=ScoreResp_Q2_r1_bf+ScoreResp_Q2_r1_af
gen ScoreResp_Q2_r1h=ScoreResp_Q2_r1_bh+ScoreResp_Q2_r1_ah
gen ScoreResp_Q2_r1m=ScoreResp_Q2_r1_bm+ScoreResp_Q2_r1_am
gen ScoreResp_Q2_r1d=ScoreResp_Q2_r1_bd+ScoreResp_Q2_r1_ad

	//Q2 r2
gen Res_Q2_r2_a=.
replace Res_Q2_r2_a=1 if q2_r2=="Yes"
replace Res_Q2_r2_a=0 if q2_r2=="No"
label var Res_Q2_r2_a "Responded Yes to Q2_r2 (1/0)"

gen Res_Q2_r2_b=.
replace Res_Q2_r2_b=1 if q2_r2=="No"
replace Res_Q2_r2_b=0 if q2_r2=="Yes"
label var Res_Q2_r2_b "Responded No to Q2_r2 (1/0)"

//Q2 r2 a
//x bar
egen xQ2_r2_a=mean(Res_Q2_r2_a)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r2_a=log(att_q2_r2_a)
egen logy_Q2_r2_a=mean(log_att_q2_r2_a)

//x bar femmes
egen xQ2_r2_af=mean(Res_Q2_r2_a) if gender==2
//x bar hommes
egen xQ2_r2_ah=mean(Res_Q2_r2_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r2_af=log(att_q2_r2_a) if gender==2
egen logy_Q2_r2_af=mean(log_att_q2_r2_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r2_ah=log(att_q2_r2_a) if gender==1
egen logy_Q2_r2_ah=mean(log_att_q2_r2_ah) if gender==1
//x bar m
egen xQ2_r2_am=mean(Res_Q2_r2_a) if moudur==1
//x bar d
egen xQ2_r2_ad=mean(Res_Q2_r2_a) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r2_am=log(att_q2_r2_a) if moudur==1
egen logy_Q2_r2_am=mean(log_att_q2_r2_am) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r2_ad=log(att_q2_r2_a) if moudur==0
egen logy_Q2_r2_ad=mean(log_att_q2_r2_ad) if moudur==0


//mettre pour tous le score f et h
replace xQ2_r2_af=xQ2_r2_af[_n-1] if xQ2_r2_af==.
replace xQ2_r2_af=. if gender==.
replace xQ2_r2_ah=xQ2_r2_ah[_n-1] if xQ2_r2_ah==.
replace xQ2_r2_ah=. if gender==.
replace logy_Q2_r2_af=logy_Q2_r2_af[_n-1] if logy_Q2_r2_af==.
replace logy_Q2_r2_af=. if gender==.
replace logy_Q2_r2_ah=logy_Q2_r2_ah[_n-1] if logy_Q2_r2_ah==.
replace logy_Q2_r2_ah=. if gender==.

replace xQ2_r2_am=xQ2_r2_am[_n-1] if xQ2_r2_am==.
replace xQ2_r2_am=. if moudur==.
replace xQ2_r2_ad=xQ2_r2_ad[_n-1] if xQ2_r2_ad==.
replace xQ2_r2_ad=. if moudur==.
replace logy_Q2_r2_am=logy_Q2_r2_am[_n-1] if logy_Q2_r2_am==.
replace logy_Q2_r2_am=. if moudur==.
replace logy_Q2_r2_ad=logy_Q2_r2_ad[_n-1] if logy_Q2_r2_ad==.
replace logy_Q2_r2_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r2_a=(Res_Q2_r2_a*(log(xQ2_r2_a*100/exp(logy_Q2_r2_a))))+((xQ2_r2_a*100)*log(att_q2_r2_a/(xQ2_r2_a*100)))
gen ScoreResp_Q2_r2_af=(Res_Q2_r2_a*(log(xQ2_r2_af*100/exp(logy_Q2_r2_af))))+((xQ2_r2_af*100)*log(att_q2_r2_a/(xQ2_r2_af*100))) if gender==2|gender==1
gen ScoreResp_Q2_r2_ah=(Res_Q2_r2_a*(log(xQ2_r2_ah*100/exp(logy_Q2_r2_ah))))+((xQ2_r2_ah*100)*log(att_q2_r2_a/(xQ2_r2_ah*100))) if gender==2|gender==1
gen ScoreResp_Q2_r2_am=(Res_Q2_r2_a*(log(xQ2_r2_am*100/exp(logy_Q2_r2_am))))+((xQ2_r2_am*100)*log(att_q2_r2_a/(xQ2_r2_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r2_ad=(Res_Q2_r2_a*(log(xQ2_r2_ad*100/exp(logy_Q2_r2_ad))))+((xQ2_r2_ad*100)*log(att_q2_r2_a/(xQ2_r2_ad*100))) if moudur==0|moudur==1

//Q2 r2 b
//x bar
egen xQ2_r2_b=mean(Res_Q2_r2_b)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r2_b=log(att_q2_r2_b)
egen logy_Q2_r2_b=mean(log_att_q2_r2_b)

//x bar femmes
egen xQ2_r2_bf=mean(Res_Q2_r2_b) if gender==2
//x bar hommes
egen xQ2_r2_bh=mean(Res_Q2_r2_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r2_bf=log(att_q2_r2_b) if gender==2
egen logy_Q2_r2_bf=mean(log_att_q2_r2_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r2_bh=log(att_q2_r2_b) if gender==1
egen logy_Q2_r2_bh=mean(log_att_q2_r2_bh) if gender==1

//x bar m
egen xQ2_r2_bm=mean(Res_Q2_r2_b) if moudur==1
//x bar d
egen xQ2_r2_bd=mean(Res_Q2_r2_b) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r2_bm=log(att_q2_r2_b) if moudur==1
egen logy_Q2_r2_bm=mean(log_att_q2_r2_bm) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r2_bd=log(att_q2_r2_b) if moudur==0
egen logy_Q2_r2_bd=mean(log_att_q2_r2_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r2_bf=xQ2_r2_bf[_n-1] if xQ2_r2_bf==.
replace xQ2_r2_bf=. if gender==.
replace xQ2_r2_bh=xQ2_r2_bh[_n-1] if xQ2_r2_bh==.
replace xQ2_r2_bh=. if gender==.
replace logy_Q2_r2_bf=logy_Q2_r2_bf[_n-1] if logy_Q2_r2_bf==.
replace logy_Q2_r2_bf=. if gender==.
replace logy_Q2_r2_bh=logy_Q2_r2_bh[_n-1] if logy_Q2_r2_bh==.
replace logy_Q2_r2_bh=. if gender==.

replace xQ2_r2_bm=xQ2_r2_bm[_n-1] if xQ2_r2_bm==.
replace xQ2_r2_bm=. if moudur==.
replace xQ2_r2_bd=xQ2_r2_bd[_n-1] if xQ2_r2_bd==.
replace xQ2_r2_bd=. if moudur==.
replace logy_Q2_r2_bm=logy_Q2_r2_bm[_n-1] if logy_Q2_r2_bm==.
replace logy_Q2_r2_bm=. if moudur==.
replace logy_Q2_r2_bd=logy_Q2_r2_bd[_n-1] if logy_Q2_r2_bd==.
replace logy_Q2_r2_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r2_b=(Res_Q2_r2_b*(log(xQ2_r2_b*100/exp(logy_Q2_r2_b))))+((xQ2_r2_b*100)*log(att_q2_r2_b/(xQ2_r2_b*100)))
gen ScoreResp_Q2_r2_bf=(Res_Q2_r2_b*(log(xQ2_r2_bf*100/exp(logy_Q2_r2_bf))))+((xQ2_r2_bf*100)*log(att_q2_r2_b/(xQ2_r2_bf*100))) if gender==2|gender==1
gen ScoreResp_Q2_r2_bh=(Res_Q2_r2_b*(log(xQ2_r2_bh*100/exp(logy_Q2_r2_bh))))+((xQ2_r2_bh*100)*log(att_q2_r2_b/(xQ2_r2_bh*100))) if gender==2|gender==1
gen ScoreResp_Q2_r2_bm=(Res_Q2_r2_b*(log(xQ2_r2_bm*100/exp(logy_Q2_r2_bm))))+((xQ2_r2_bm*100)*log(att_q2_r2_b/(xQ2_r2_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r2_bd=(Res_Q2_r2_b*(log(xQ2_r2_bd*100/exp(logy_Q2_r2_bd))))+((xQ2_r2_bd*100)*log(att_q2_r2_b/(xQ2_r2_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q2_r2=ScoreResp_Q2_r2_b+ScoreResp_Q2_r2_a
gen ScoreResp_Q2_r2f=ScoreResp_Q2_r2_bf+ScoreResp_Q2_r2_af
gen ScoreResp_Q2_r2h=ScoreResp_Q2_r2_bh+ScoreResp_Q2_r2_ah
gen ScoreResp_Q2_r2m=ScoreResp_Q2_r2_bm+ScoreResp_Q2_r2_am
gen ScoreResp_Q2_r2d=ScoreResp_Q2_r2_bd+ScoreResp_Q2_r2_ad

	//Q2 r3
gen Res_Q2_r3_a=.
replace Res_Q2_r3_a=1 if q2_r3=="Yes"
replace Res_Q2_r3_a=0 if q2_r3=="No"
label var Res_Q2_r3_a "Responded Yes to Q2_r3 (1/0)"

gen Res_Q2_r3_b=.
replace Res_Q2_r3_b=1 if q2_r3=="No"
replace Res_Q2_r3_b=0 if q2_r3=="Yes"
label var Res_Q2_r3_b "Responded No to Q2_r3 (1/0)"

//Q2 r3 a
//x bar
egen xQ2_r3_a=mean(Res_Q2_r3_a)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r3_a=log(att_q2_r3_a)
egen logy_Q2_r3_a=mean(log_att_q2_r3_a)

//x bar femmes
egen xQ2_r3_af=mean(Res_Q2_r3_a) if gender==2
//x bar hommes
egen xQ2_r3_ah=mean(Res_Q2_r3_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r3_af=log(att_q2_r3_a) if gender==2
egen logy_Q2_r3_af=mean(log_att_q2_r3_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r3_ah=log(att_q2_r3_a) if gender==1
egen logy_Q2_r3_ah=mean(log_att_q2_r3_ah) if gender==1

//mettre pour tous le score f et h
replace xQ2_r3_af=xQ2_r3_af[_n-1] if xQ2_r3_af==.
replace xQ2_r3_af=. if gender==.
replace xQ2_r3_ah=xQ2_r3_ah[_n-1] if xQ2_r3_ah==.
replace xQ2_r3_ah=. if gender==.
replace logy_Q2_r3_af=logy_Q2_r3_af[_n-1] if logy_Q2_r3_af==.
replace logy_Q2_r3_af=. if gender==.
replace logy_Q2_r3_ah=logy_Q2_r3_ah[_n-1] if logy_Q2_r3_ah==.
replace logy_Q2_r3_ah=. if gender==.

//x bar femmes
egen xQ2_r3_am=mean(Res_Q2_r3_a) if moudur==1
//x bar hommes
egen xQ2_r3_ad=mean(Res_Q2_r3_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r3_am=log(att_q2_r3_a) if moudur==1
egen logy_Q2_r3_am=mean(log_att_q2_r3_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r3_ad=log(att_q2_r3_a) if moudur==0
egen logy_Q2_r3_ad=mean(log_att_q2_r3_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r3_am=xQ2_r3_am[_n-1] if xQ2_r3_am==.
replace xQ2_r3_am=. if moudur==.
replace xQ2_r3_ad=xQ2_r3_ad[_n-1] if xQ2_r3_ad==.
replace xQ2_r3_ad=. if moudur==.
replace logy_Q2_r3_am=logy_Q2_r3_am[_n-1] if logy_Q2_r3_am==.
replace logy_Q2_r3_am=. if moudur==.
replace logy_Q2_r3_ad=logy_Q2_r3_ad[_n-1] if logy_Q2_r3_ad==.
replace logy_Q2_r3_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r3_a=(Res_Q2_r3_a*(log(xQ2_r3_a*100/exp(logy_Q2_r3_a))))+((xQ2_r3_a*100)*log(att_q2_r3_a/(xQ2_r3_a*100)))
gen ScoreResp_Q2_r3_af=(Res_Q2_r3_a*(log(xQ2_r3_af*100/exp(logy_Q2_r3_af))))+((xQ2_r3_af*100)*log(att_q2_r3_a/(xQ2_r3_af*100))) if gender==2|gender==1
gen ScoreResp_Q2_r3_ah=(Res_Q2_r3_a*(log(xQ2_r3_ah*100/exp(logy_Q2_r3_ah))))+((xQ2_r3_ah*100)*log(att_q2_r3_a/(xQ2_r3_ah*100))) if gender==2|gender==1
gen ScoreResp_Q2_r3_am=(Res_Q2_r3_a*(log(xQ2_r3_am*100/exp(logy_Q2_r3_am))))+((xQ2_r3_am*100)*log(att_q2_r3_a/(xQ2_r3_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r3_ad=(Res_Q2_r3_a*(log(xQ2_r3_ad*100/exp(logy_Q2_r3_ad))))+((xQ2_r3_ad*100)*log(att_q2_r3_a/(xQ2_r3_ad*100))) if moudur==0|moudur==1

//Q2 r3 b
//x bar
egen xQ2_r3_b=mean(Res_Q2_r3_b)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r3_b=log(att_q2_r3_b)
egen logy_Q2_r3_b=mean(log_att_q2_r3_b)

//x bar femmes
egen xQ2_r3_bf=mean(Res_Q2_r3_b) if gender==2
//x bar hommes
egen xQ2_r3_bh=mean(Res_Q2_r3_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r3_bf=log(att_q2_r3_b) if gender==2
egen logy_Q2_r3_bf=mean(log_att_q2_r3_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r3_bh=log(att_q2_r3_b) if gender==1
egen logy_Q2_r3_bh=mean(log_att_q2_r3_bh) if gender==1

//mettre pour tous le score f et h
replace xQ2_r3_bf=xQ2_r3_bf[_n-1] if xQ2_r3_bf==.
replace xQ2_r3_bf=. if gender==.
replace xQ2_r3_bh=xQ2_r3_bh[_n-1] if xQ2_r3_bh==.
replace xQ2_r3_bh=. if gender==.
replace logy_Q2_r3_bf=logy_Q2_r3_bf[_n-1] if logy_Q2_r3_bf==.
replace logy_Q2_r3_bf=. if gender==.
replace logy_Q2_r3_bh=logy_Q2_r3_bh[_n-1] if logy_Q2_r3_bh==.
replace logy_Q2_r3_bh=. if gender==.

//x bar m
egen xQ2_r3_bm=mean(Res_Q2_r3_b) if moudur==1
//x bar d
egen xQ2_r3_bd=mean(Res_Q2_r3_b) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r3_bm=log(att_q2_r3_b) if moudur==1
egen logy_Q2_r3_bm=mean(log_att_q2_r3_bm) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r3_bd=log(att_q2_r3_b) if moudur==0
egen logy_Q2_r3_bd=mean(log_att_q2_r3_bd) if moudur==0

//mettre pour tous le score m et d
replace xQ2_r3_bm=xQ2_r3_bm[_n-1] if xQ2_r3_bm==.
replace xQ2_r3_bm=. if moudur==.
replace xQ2_r3_bd=xQ2_r3_bd[_n-1] if xQ2_r3_bd==.
replace xQ2_r3_bd=. if moudur==.
replace logy_Q2_r3_bm=logy_Q2_r3_bm[_n-1] if logy_Q2_r3_bm==.
replace logy_Q2_r3_bm=. if moudur==.
replace logy_Q2_r3_bd=logy_Q2_r3_bd[_n-1] if logy_Q2_r3_bd==.
replace logy_Q2_r3_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r3_b=(Res_Q2_r3_b*(log(xQ2_r3_b*100/exp(logy_Q2_r3_b))))+((xQ2_r3_b*100)*log(att_q2_r3_b/(xQ2_r3_b*100)))
gen ScoreResp_Q2_r3_bf=(Res_Q2_r3_b*(log(xQ2_r3_bf*100/exp(logy_Q2_r3_bf))))+((xQ2_r3_bf*100)*log(att_q2_r3_b/(xQ2_r3_bf*100))) if gender==2|gender==1
gen ScoreResp_Q2_r3_bh=(Res_Q2_r3_b*(log(xQ2_r3_bh*100/exp(logy_Q2_r3_bh))))+((xQ2_r3_bh*100)*log(att_q2_r3_b/(xQ2_r3_bh*100))) if gender==2|gender==1
gen ScoreResp_Q2_r3_bm=(Res_Q2_r3_b*(log(xQ2_r3_bm*100/exp(logy_Q2_r3_bm))))+((xQ2_r3_bm*100)*log(att_q2_r3_b/(xQ2_r3_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r3_bd=(Res_Q2_r3_b*(log(xQ2_r3_bd*100/exp(logy_Q2_r3_bd))))+((xQ2_r3_bd*100)*log(att_q2_r3_b/(xQ2_r3_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q2_r3=ScoreResp_Q2_r3_b+ScoreResp_Q2_r3_a
gen ScoreResp_Q2_r3f=ScoreResp_Q2_r3_bf+ScoreResp_Q2_r3_af
gen ScoreResp_Q2_r3h=ScoreResp_Q2_r3_bh+ScoreResp_Q2_r3_ah
gen ScoreResp_Q2_r3m=ScoreResp_Q2_r3_bm+ScoreResp_Q2_r3_am
gen ScoreResp_Q2_r3d=ScoreResp_Q2_r3_bd+ScoreResp_Q2_r3_ad

	//Q2 r4
gen Res_Q2_r4_a=.
replace Res_Q2_r4_a=1 if q2_r4=="Yes"
replace Res_Q2_r4_a=0 if q2_r4=="No"
label var Res_Q2_r4_a "Responded Yes to Q2_r4 (1/0)"

gen Res_Q2_r4_b=.
replace Res_Q2_r4_b=1 if q2_r4=="No"
replace Res_Q2_r4_b=0 if q2_r4=="Yes"
label var Res_Q2_r4_b "Responded No to Q2_r4 (1/0)"

//Q2 r4 a
//x bar
egen xQ2_r4_a=mean(Res_Q2_r4_a)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r4_a=log(att_q2_r4_a)
egen logy_Q2_r4_a=mean(log_att_q2_r4_a)

//x bar femmes
egen xQ2_r4_af=mean(Res_Q2_r4_a) if gender==2
//x bar hommes
egen xQ2_r4_ah=mean(Res_Q2_r4_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r4_af=log(att_q2_r4_a) if gender==2
egen logy_Q2_r4_af=mean(log_att_q2_r4_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r4_ah=log(att_q2_r4_a) if gender==1
egen logy_Q2_r4_ah=mean(log_att_q2_r4_ah) if gender==1

//mettre pour tous le score f et h
replace xQ2_r4_af=xQ2_r4_af[_n-1] if xQ2_r4_af==.
replace xQ2_r4_af=. if gender==.
replace xQ2_r4_ah=xQ2_r4_ah[_n-1] if xQ2_r4_ah==.
replace xQ2_r4_ah=. if gender==.
replace logy_Q2_r4_af=logy_Q2_r4_af[_n-1] if logy_Q2_r4_af==.
replace logy_Q2_r4_af=. if gender==.
replace logy_Q2_r4_ah=logy_Q2_r4_ah[_n-1] if logy_Q2_r4_ah==.
replace logy_Q2_r4_ah=. if gender==.

//x bar m
egen xQ2_r4_am=mean(Res_Q2_r4_a) if moudur==1
//x bar d
egen xQ2_r4_ad=mean(Res_Q2_r4_a) if moudur==0
//y bar = exp((sum of logy)/n) m
gen log_att_q2_r4_am=log(att_q2_r4_a) if moudur==1
egen logy_Q2_r4_am=mean(log_att_q2_r4_am) if moudur==1
//y bar = exp((sum of logy)/n) d
gen log_att_q2_r4_ad=log(att_q2_r4_a) if moudur==0
egen logy_Q2_r4_ad=mean(log_att_q2_r4_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r4_am=xQ2_r4_am[_n-1] if xQ2_r4_am==.
replace xQ2_r4_am=. if moudur==.
replace xQ2_r4_ad=xQ2_r4_ad[_n-1] if xQ2_r4_ad==.
replace xQ2_r4_ad=. if moudur==.
replace logy_Q2_r4_am=logy_Q2_r4_am[_n-1] if logy_Q2_r4_am==.
replace logy_Q2_r4_am=. if moudur==.
replace logy_Q2_r4_ad=logy_Q2_r4_ad[_n-1] if logy_Q2_r4_ad==.
replace logy_Q2_r4_ad=. if moudur==.


//Score for respondent
gen ScoreResp_Q2_r4_a=(Res_Q2_r4_a*(log(xQ2_r4_a*100/exp(logy_Q2_r4_a))))+((xQ2_r4_a*100)*log(att_q2_r4_a/(xQ2_r4_a*100)))
gen ScoreResp_Q2_r4_af=(Res_Q2_r4_a*(log(xQ2_r4_af*100/exp(logy_Q2_r4_af))))+((xQ2_r4_af*100)*log(att_q2_r4_a/(xQ2_r4_af*100))) if gender==2|gender==1
gen ScoreResp_Q2_r4_ah=(Res_Q2_r4_a*(log(xQ2_r4_ah*100/exp(logy_Q2_r4_ah))))+((xQ2_r4_ah*100)*log(att_q2_r4_a/(xQ2_r4_ah*100))) if gender==2|gender==1
gen ScoreResp_Q2_r4_am=(Res_Q2_r4_a*(log(xQ2_r4_am*100/exp(logy_Q2_r4_am))))+((xQ2_r4_am*100)*log(att_q2_r4_a/(xQ2_r4_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r4_ad=(Res_Q2_r4_a*(log(xQ2_r4_ad*100/exp(logy_Q2_r4_ad))))+((xQ2_r4_ad*100)*log(att_q2_r4_a/(xQ2_r4_ad*100))) if moudur==0|moudur==1

//Q2 r4 b
//x bar
egen xQ2_r4_b=mean(Res_Q2_r4_b)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r4_b=log(att_q2_r4_b)
egen logy_Q2_r4_b=mean(log_att_q2_r4_b)

//x bar femmes
egen xQ2_r4_bf=mean(Res_Q2_r4_b) if gender==2
//x bar hommes
egen xQ2_r4_bh=mean(Res_Q2_r4_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r4_bf=log(att_q2_r4_b) if gender==2
egen logy_Q2_r4_bf=mean(log_att_q2_r4_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r4_bh=log(att_q2_r4_b) if gender==1
egen logy_Q2_r4_bh=mean(log_att_q2_r4_bh) if gender==1

//mettre pour tous le score f et h
replace xQ2_r4_bf=xQ2_r4_bf[_n-1] if xQ2_r4_bf==.
replace xQ2_r4_bf=. if gender==.
replace xQ2_r4_bh=xQ2_r4_bh[_n-1] if xQ2_r4_bh==.
replace xQ2_r4_bh=. if gender==.
replace logy_Q2_r4_bf=logy_Q2_r4_bf[_n-1] if logy_Q2_r4_bf==.
replace logy_Q2_r4_bf=. if gender==.
replace logy_Q2_r4_bh=logy_Q2_r4_bh[_n-1] if logy_Q2_r4_bh==.
replace logy_Q2_r4_bh=. if gender==.

//x bar femmes
egen xQ2_r4_bm=mean(Res_Q2_r4_b) if moudur==1
//x bar hommes
egen xQ2_r4_bd=mean(Res_Q2_r4_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r4_bm=log(att_q2_r4_b) if moudur==1
egen logy_Q2_r4_bm=mean(log_att_q2_r4_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r4_bd=log(att_q2_r4_b) if moudur==0
egen logy_Q2_r4_bd=mean(log_att_q2_r4_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r4_bm=xQ2_r4_bm[_n-1] if xQ2_r4_bm==.
replace xQ2_r4_bm=. if moudur==.
replace xQ2_r4_bd=xQ2_r4_bd[_n-1] if xQ2_r4_bd==.
replace xQ2_r4_bd=. if moudur==.
replace logy_Q2_r4_bm=logy_Q2_r4_bm[_n-1] if logy_Q2_r4_bm==.
replace logy_Q2_r4_bm=. if moudur==.
replace logy_Q2_r4_bd=logy_Q2_r4_bd[_n-1] if logy_Q2_r4_bd==.
replace logy_Q2_r4_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r4_b=(Res_Q2_r4_b*(log(xQ2_r4_b*100/exp(logy_Q2_r4_b))))+((xQ2_r4_b*100)*log(att_q2_r4_b/(xQ2_r4_b*100)))
gen ScoreResp_Q2_r4_bf=(Res_Q2_r4_b*(log(xQ2_r4_bf*100/exp(logy_Q2_r4_bf))))+((xQ2_r4_bf*100)*log(att_q2_r4_b/(xQ2_r4_bf*100))) if gender==2|gender==1
gen ScoreResp_Q2_r4_bh=(Res_Q2_r4_b*(log(xQ2_r4_bh*100/exp(logy_Q2_r4_bh))))+((xQ2_r4_bh*100)*log(att_q2_r4_b/(xQ2_r4_bh*100))) if gender==2|gender==1
gen ScoreResp_Q2_r4_bm=(Res_Q2_r4_b*(log(xQ2_r4_bm*100/exp(logy_Q2_r4_bm))))+((xQ2_r4_bm*100)*log(att_q2_r4_b/(xQ2_r4_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r4_bd=(Res_Q2_r4_b*(log(xQ2_r4_bd*100/exp(logy_Q2_r4_bd))))+((xQ2_r4_bd*100)*log(att_q2_r4_b/(xQ2_r4_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q2_r4=ScoreResp_Q2_r4_b+ScoreResp_Q2_r4_a
gen ScoreResp_Q2_r4f=ScoreResp_Q2_r4_bf+ScoreResp_Q2_r4_af
gen ScoreResp_Q2_r4h=ScoreResp_Q2_r4_bh+ScoreResp_Q2_r4_ah
gen ScoreResp_Q2_r4m=ScoreResp_Q2_r4_bm+ScoreResp_Q2_r4_am
gen ScoreResp_Q2_r4d=ScoreResp_Q2_r4_bd+ScoreResp_Q2_r4_ad

	//Q2 r5
gen Res_Q2_r5_a=.
replace Res_Q2_r5_a=1 if q2_r5=="Yes"
replace Res_Q2_r5_a=0 if q2_r5=="No"
label var Res_Q2_r5_a "Responded Yes to Q2_r5 (1/0)"

gen Res_Q2_r5_b=.
replace Res_Q2_r5_b=1 if q2_r5=="No"
replace Res_Q2_r5_b=0 if q2_r5=="Yes"
label var Res_Q2_r5_b "Responded No to Q2_r5 (1/0)"

//Q2 r5 a
//x bar
egen xQ2_r5_a=mean(Res_Q2_r5_a)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r5_a=log(att_q2_r5_a)
egen logy_Q2_r5_a=mean(log_att_q2_r5_a)

//x bar femmes
egen xQ2_r5_af=mean(Res_Q2_r5_a) if gender==2
//x bar hommes
egen xQ2_r5_ah=mean(Res_Q2_r5_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r5_af=log(att_q2_r5_a) if gender==2
egen logy_Q2_r5_af=mean(log_att_q2_r5_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r5_ah=log(att_q2_r5_a) if gender==1
egen logy_Q2_r5_ah=mean(log_att_q2_r5_ah) if gender==1

//mettre pour tous le score f et h
replace xQ2_r5_af=xQ2_r5_af[_n-1] if xQ2_r5_af==.
replace xQ2_r5_af=. if gender==.
replace xQ2_r5_ah=xQ2_r5_ah[_n-1] if xQ2_r5_ah==.
replace xQ2_r5_ah=. if gender==.
replace logy_Q2_r5_af=logy_Q2_r5_af[_n-1] if logy_Q2_r5_af==.
replace logy_Q2_r5_af=. if gender==.
replace logy_Q2_r5_ah=logy_Q2_r5_ah[_n-1] if logy_Q2_r5_ah==.
replace logy_Q2_r5_ah=. if gender==.

//x bar femmes
egen xQ2_r5_am=mean(Res_Q2_r5_a) if moudur==1
//x bar hommes
egen xQ2_r5_ad=mean(Res_Q2_r5_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r5_am=log(att_q2_r5_a) if moudur==1
egen logy_Q2_r5_am=mean(log_att_q2_r5_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r5_ad=log(att_q2_r5_a) if moudur==0
egen logy_Q2_r5_ad=mean(log_att_q2_r5_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r5_am=xQ2_r5_am[_n-1] if xQ2_r5_am==.
replace xQ2_r5_am=. if moudur==.
replace xQ2_r5_ad=xQ2_r5_ad[_n-1] if xQ2_r5_ad==.
replace xQ2_r5_ad=. if moudur==.
replace logy_Q2_r5_am=logy_Q2_r5_am[_n-1] if logy_Q2_r5_am==.
replace logy_Q2_r5_am=. if moudur==.
replace logy_Q2_r5_ad=logy_Q2_r5_ad[_n-1] if logy_Q2_r5_ad==.
replace logy_Q2_r5_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r5_a=(Res_Q2_r5_a*(log(xQ2_r5_a*100/exp(logy_Q2_r5_a))))+((xQ2_r5_a*100)*log(att_q2_r5_a/(xQ2_r5_a*100)))
gen ScoreResp_Q2_r5_af=(Res_Q2_r5_a*(log(xQ2_r5_af*100/exp(logy_Q2_r5_af))))+((xQ2_r5_af*100)*log(att_q2_r5_a/(xQ2_r5_af*100))) if gender==2|gender==1
gen ScoreResp_Q2_r5_ah=(Res_Q2_r5_a*(log(xQ2_r5_ah*100/exp(logy_Q2_r5_ah))))+((xQ2_r5_ah*100)*log(att_q2_r5_a/(xQ2_r5_ah*100))) if gender==2|gender==1
gen ScoreResp_Q2_r5_am=(Res_Q2_r5_a*(log(xQ2_r5_am*100/exp(logy_Q2_r5_am))))+((xQ2_r5_am*100)*log(att_q2_r5_a/(xQ2_r5_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r5_ad=(Res_Q2_r5_a*(log(xQ2_r5_ad*100/exp(logy_Q2_r5_ad))))+((xQ2_r5_ad*100)*log(att_q2_r5_a/(xQ2_r5_ad*100))) if moudur==0|moudur==1

//Q2 r5 b
//x bar
egen xQ2_r5_b=mean(Res_Q2_r5_b)

//y bar = exp((sum of logy)/n)
gen log_att_q2_r5_b=log(att_q2_r5_b)
egen logy_Q2_r5_b=mean(log_att_q2_r5_b)

//x bar femmes
egen xQ2_r5_bf=mean(Res_Q2_r5_b) if gender==2
//x bar hommes
egen xQ2_r5_bh=mean(Res_Q2_r5_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r5_bf=log(att_q2_r5_b) if gender==2
egen logy_Q2_r5_bf=mean(log_att_q2_r5_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r5_bh=log(att_q2_r5_b) if gender==1
egen logy_Q2_r5_bh=mean(log_att_q2_r5_bh) if gender==1

//mettre pour tous le score f et h
replace xQ2_r5_bf=xQ2_r5_bf[_n-1] if xQ2_r5_bf==.
replace xQ2_r5_bf=. if gender==.
replace xQ2_r5_bh=xQ2_r5_bh[_n-1] if xQ2_r5_bh==.
replace xQ2_r5_bh=. if gender==.
replace logy_Q2_r5_bf=logy_Q2_r5_bf[_n-1] if logy_Q2_r5_bf==.
replace logy_Q2_r5_bf=. if gender==.
replace logy_Q2_r5_bh=logy_Q2_r5_bh[_n-1] if logy_Q2_r5_bh==.
replace logy_Q2_r5_bh=. if gender==.

//x bar femmes
egen xQ2_r5_bm=mean(Res_Q2_r5_b) if moudur==1
//x bar hommes
egen xQ2_r5_bd=mean(Res_Q2_r5_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q2_r5_bm=log(att_q2_r5_b) if moudur==1
egen logy_Q2_r5_bm=mean(log_att_q2_r5_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q2_r5_bd=log(att_q2_r5_b) if moudur==0
egen logy_Q2_r5_bd=mean(log_att_q2_r5_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ2_r5_bm=xQ2_r5_bm[_n-1] if xQ2_r5_bm==.
replace xQ2_r5_bm=. if moudur==.
replace xQ2_r5_bd=xQ2_r5_bd[_n-1] if xQ2_r5_bd==.
replace xQ2_r5_bd=. if moudur==.
replace logy_Q2_r5_bm=logy_Q2_r5_bm[_n-1] if logy_Q2_r5_bm==.
replace logy_Q2_r5_bm=. if moudur==.
replace logy_Q2_r5_bd=logy_Q2_r5_bd[_n-1] if logy_Q2_r5_bd==.
replace logy_Q2_r5_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q2_r5_b=(Res_Q2_r5_b*(log(xQ2_r5_b*100/exp(logy_Q2_r5_b))))+((xQ2_r5_b*100)*log(att_q2_r5_b/(xQ2_r5_b*100)))
gen ScoreResp_Q2_r5_bf=(Res_Q2_r5_b*(log(xQ2_r5_bf*100/exp(logy_Q2_r5_bf))))+((xQ2_r5_bf*100)*log(att_q2_r5_b/(xQ2_r5_bf*100))) if gender==2|gender==1
gen ScoreResp_Q2_r5_bh=(Res_Q2_r5_b*(log(xQ2_r5_bh*100/exp(logy_Q2_r5_bh))))+((xQ2_r5_bh*100)*log(att_q2_r5_b/(xQ2_r5_bh*100))) if gender==2|gender==1
gen ScoreResp_Q2_r5_bm=(Res_Q2_r5_b*(log(xQ2_r5_bm*100/exp(logy_Q2_r5_bm))))+((xQ2_r5_bm*100)*log(att_q2_r5_b/(xQ2_r5_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q2_r5_bd=(Res_Q2_r5_b*(log(xQ2_r5_bd*100/exp(logy_Q2_r5_bd))))+((xQ2_r5_bd*100)*log(att_q2_r5_b/(xQ2_r5_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q2_r5=ScoreResp_Q2_r5_b+ScoreResp_Q2_r5_a
gen ScoreResp_Q2_r5f=ScoreResp_Q2_r5_bf+ScoreResp_Q2_r5_af
gen ScoreResp_Q2_r5h=ScoreResp_Q2_r5_bh+ScoreResp_Q2_r5_ah
gen ScoreResp_Q2_r5m=ScoreResp_Q2_r5_bm+ScoreResp_Q2_r5_am
gen ScoreResp_Q2_r5d=ScoreResp_Q2_r5_bd+ScoreResp_Q2_r5_ad

		//Q3
	
	//Q3 r1
gen Res_Q3_r1_a=.
replace Res_Q3_r1_a=1 if q3_r1=="Yes"
replace Res_Q3_r1_a=0 if q3_r1=="No"
label var Res_Q3_r1_a "Responded Yes to Q3_r1 (1/0)"

gen Res_Q3_r1_b=.
replace Res_Q3_r1_b=1 if q3_r1=="No"
replace Res_Q3_r1_b=0 if q3_r1=="Yes"
label var Res_Q3_r1_b "Responded No to Q3_r1 (1/0)"

//Q3 r1 a
//x bar
egen xQ3_r1_a=mean(Res_Q3_r1_a)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r1_a=log(att_q3_r1_a)
egen logy_Q3_r1_a=mean(log_att_q3_r1_a)

//x bar femmes
egen xQ3_r1_af=mean(Res_Q3_r1_a) if gender==2
//x bar hommes
egen xQ3_r1_ah=mean(Res_Q3_r1_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r1_af=log(att_q3_r1_a) if gender==2
egen logy_Q3_r1_af=mean(log_att_q3_r1_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r1_ah=log(att_q3_r1_a) if gender==1
egen logy_Q3_r1_ah=mean(log_att_q3_r1_ah) if gender==1

//mettre pour tous le score f et h
replace xQ3_r1_af=xQ3_r1_af[_n-1] if xQ3_r1_af==.
replace xQ3_r1_af=. if gender==.
replace xQ3_r1_ah=xQ3_r1_ah[_n-1] if xQ3_r1_ah==.
replace xQ3_r1_ah=. if gender==.
replace logy_Q3_r1_af=logy_Q3_r1_af[_n-1] if logy_Q3_r1_af==.
replace logy_Q3_r1_af=. if gender==.
replace logy_Q3_r1_ah=logy_Q3_r1_ah[_n-1] if logy_Q3_r1_ah==.
replace logy_Q3_r1_ah=. if gender==.

//x bar m
egen xQ3_r1_am=mean(Res_Q3_r1_a) if moudur==1
//x bar d
egen xQ3_r1_ad=mean(Res_Q3_r1_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r1_am=log(att_q3_r1_a) if moudur==1
egen logy_Q3_r1_am=mean(log_att_q3_r1_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r1_ad=log(att_q3_r1_a) if moudur==0
egen logy_Q3_r1_ad=mean(log_att_q3_r1_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r1_am=xQ3_r1_am[_n-1] if xQ3_r1_am==.
replace xQ3_r1_am=. if moudur==.
replace xQ3_r1_ad=xQ3_r1_ad[_n-1] if xQ3_r1_ad==.
replace xQ3_r1_ad=. if moudur==.
replace logy_Q3_r1_am=logy_Q3_r1_am[_n-1] if logy_Q3_r1_am==.
replace logy_Q3_r1_am=. if moudur==.
replace logy_Q3_r1_ad=logy_Q3_r1_ad[_n-1] if logy_Q3_r1_ad==.
replace logy_Q3_r1_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r1_a=(Res_Q3_r1_a*(log(xQ3_r1_a*100/exp(logy_Q3_r1_a))))+((xQ3_r1_a*100)*log(att_q3_r1_a/(xQ3_r1_a*100)))
gen ScoreResp_Q3_r1_af=(Res_Q3_r1_a*(log(xQ3_r1_af*100/exp(logy_Q3_r1_af))))+((xQ3_r1_af*100)*log(att_q3_r1_a/(xQ3_r1_af*100))) if gender==2|gender==1
gen ScoreResp_Q3_r1_ah=(Res_Q3_r1_a*(log(xQ3_r1_ah*100/exp(logy_Q3_r1_ah))))+((xQ3_r1_ah*100)*log(att_q3_r1_a/(xQ3_r1_ah*100))) if gender==2|gender==1
gen ScoreResp_Q3_r1_am=(Res_Q3_r1_a*(log(xQ3_r1_am*100/exp(logy_Q3_r1_am))))+((xQ3_r1_am*100)*log(att_q3_r1_a/(xQ3_r1_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r1_ad=(Res_Q3_r1_a*(log(xQ3_r1_ad*100/exp(logy_Q3_r1_ad))))+((xQ3_r1_ad*100)*log(att_q3_r1_a/(xQ3_r1_ad*100))) if moudur==0|moudur==1

//Q3 r1 b
//x bar
egen xQ3_r1_b=mean(Res_Q3_r1_b)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r1_b=log(att_q3_r1_b)
egen logy_Q3_r1_b=mean(log_att_q3_r1_b)

//x bar femmes
egen xQ3_r1_bf=mean(Res_Q3_r1_b) if gender==2
//x bar hommes
egen xQ3_r1_bh=mean(Res_Q3_r1_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r1_bf=log(att_q3_r1_b) if gender==2
egen logy_Q3_r1_bf=mean(log_att_q3_r1_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r1_bh=log(att_q3_r1_b) if gender==1
egen logy_Q3_r1_bh=mean(log_att_q3_r1_bh) if gender==1

//mettre pour tous le score f et h
replace xQ3_r1_bf=xQ3_r1_bf[_n-1] if xQ3_r1_bf==.
replace xQ3_r1_bf=. if gender==.
replace xQ3_r1_bh=xQ3_r1_bh[_n-1] if xQ3_r1_bh==.
replace xQ3_r1_bh=. if gender==.
replace logy_Q3_r1_bf=logy_Q3_r1_bf[_n-1] if logy_Q3_r1_bf==.
replace logy_Q3_r1_bf=. if gender==.
replace logy_Q3_r1_bh=logy_Q3_r1_bh[_n-1] if logy_Q3_r1_bh==.
replace logy_Q3_r1_bh=. if gender==.

//x bar m
egen xQ3_r1_bm=mean(Res_Q3_r1_b) if moudur==1
//x bar d
egen xQ3_r1_bd=mean(Res_Q3_r1_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r1_bm=log(att_q3_r1_b) if moudur==1
egen logy_Q3_r1_bm=mean(log_att_q3_r1_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r1_bd=log(att_q3_r1_b) if moudur==0
egen logy_Q3_r1_bd=mean(log_att_q3_r1_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r1_bm=xQ3_r1_bm[_n-1] if xQ3_r1_bm==.
replace xQ3_r1_bm=. if moudur==.
replace xQ3_r1_bd=xQ3_r1_bd[_n-1] if xQ3_r1_bd==.
replace xQ3_r1_bd=. if moudur==.
replace logy_Q3_r1_bm=logy_Q3_r1_bm[_n-1] if logy_Q3_r1_bm==.
replace logy_Q3_r1_bm=. if moudur==.
replace logy_Q3_r1_bd=logy_Q3_r1_bd[_n-1] if logy_Q3_r1_bd==.
replace logy_Q3_r1_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r1_b=(Res_Q3_r1_b*(log(xQ3_r1_b*100/exp(logy_Q3_r1_b))))+((xQ3_r1_b*100)*log(att_q3_r1_b/(xQ3_r1_b*100)))
gen ScoreResp_Q3_r1_bf=(Res_Q3_r1_b*(log(xQ3_r1_bf*100/exp(logy_Q3_r1_bf))))+((xQ3_r1_bf*100)*log(att_q3_r1_b/(xQ3_r1_bf*100))) if gender==2|gender==1
gen ScoreResp_Q3_r1_bh=(Res_Q3_r1_b*(log(xQ3_r1_bh*100/exp(logy_Q3_r1_bh))))+((xQ3_r1_bh*100)*log(att_q3_r1_b/(xQ3_r1_bh*100))) if gender==2|gender==1
gen ScoreResp_Q3_r1_bm=(Res_Q3_r1_b*(log(xQ3_r1_bm*100/exp(logy_Q3_r1_bm))))+((xQ3_r1_bm*100)*log(att_q3_r1_b/(xQ3_r1_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r1_bd=(Res_Q3_r1_b*(log(xQ3_r1_bd*100/exp(logy_Q3_r1_bd))))+((xQ3_r1_bd*100)*log(att_q3_r1_b/(xQ3_r1_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q3_r1=ScoreResp_Q3_r1_b+ScoreResp_Q3_r1_a
gen ScoreResp_Q3_r1f=ScoreResp_Q3_r1_bf+ScoreResp_Q3_r1_af
gen ScoreResp_Q3_r1h=ScoreResp_Q3_r1_bh+ScoreResp_Q3_r1_ah
gen ScoreResp_Q3_r1m=ScoreResp_Q3_r1_bm+ScoreResp_Q3_r1_am
gen ScoreResp_Q3_r1d=ScoreResp_Q3_r1_bd+ScoreResp_Q3_r1_ad

	//Q3 r2
gen Res_Q3_r2_a=.
replace Res_Q3_r2_a=1 if q3_r2=="Yes"
replace Res_Q3_r2_a=0 if q3_r2=="No"
label var Res_Q3_r2_a "Responded Yes to Q3_r2 (1/0)"

gen Res_Q3_r2_b=.
replace Res_Q3_r2_b=1 if q3_r2=="No"
replace Res_Q3_r2_b=0 if q3_r2=="Yes"
label var Res_Q3_r2_b "Responded No to Q3_r2 (1/0)"

//Q3 r2 a
//x bar
egen xQ3_r2_a=mean(Res_Q3_r2_a)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r2_a=log(att_q3_r2_a)
egen logy_Q3_r2_a=mean(log_att_q3_r2_a)

//x bar femmes
egen xQ3_r2_af=mean(Res_Q3_r2_a) if gender==2
//x bar hommes
egen xQ3_r2_ah=mean(Res_Q3_r2_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r2_af=log(att_q3_r2_a) if gender==2
egen logy_Q3_r2_af=mean(log_att_q3_r2_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r2_ah=log(att_q3_r2_a) if gender==1
egen logy_Q3_r2_ah=mean(log_att_q3_r2_ah) if gender==1

//mettre pour tous le score f et h
replace xQ3_r2_af=xQ3_r2_af[_n-1] if xQ3_r2_af==.
replace xQ3_r2_af=. if gender==.
replace xQ3_r2_ah=xQ3_r2_ah[_n-1] if xQ3_r2_ah==.
replace xQ3_r2_ah=. if gender==.
replace logy_Q3_r2_af=logy_Q3_r2_af[_n-1] if logy_Q3_r2_af==.
replace logy_Q3_r2_af=. if gender==.
replace logy_Q3_r2_ah=logy_Q3_r2_ah[_n-1] if logy_Q3_r2_ah==.
replace logy_Q3_r2_ah=. if gender==.

//x bar m
egen xQ3_r2_am=mean(Res_Q3_r2_a) if moudur==1
//x bar d
egen xQ3_r2_ad=mean(Res_Q3_r2_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r2_am=log(att_q3_r2_a) if moudur==1
egen logy_Q3_r2_am=mean(log_att_q3_r2_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r2_ad=log(att_q3_r2_a) if moudur==0
egen logy_Q3_r2_ad=mean(log_att_q3_r2_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r2_am=xQ3_r2_am[_n-1] if xQ3_r2_am==.
replace xQ3_r2_am=. if moudur==.
replace xQ3_r2_ad=xQ3_r2_ad[_n-1] if xQ3_r2_ad==.
replace xQ3_r2_ad=. if moudur==.
replace logy_Q3_r2_am=logy_Q3_r2_am[_n-1] if logy_Q3_r2_am==.
replace logy_Q3_r2_am=. if moudur==.
replace logy_Q3_r2_ad=logy_Q3_r2_ad[_n-1] if logy_Q3_r2_ad==.
replace logy_Q3_r2_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r2_a=(Res_Q3_r2_a*(log(xQ3_r2_a*100/exp(logy_Q3_r2_a))))+((xQ3_r2_a*100)*log(att_q3_r2_a/(xQ3_r2_a*100)))
gen ScoreResp_Q3_r2_af=(Res_Q3_r2_a*(log(xQ3_r2_af*100/exp(logy_Q3_r2_af))))+((xQ3_r2_af*100)*log(att_q3_r2_a/(xQ3_r2_af*100))) if gender==2|gender==1
gen ScoreResp_Q3_r2_ah=(Res_Q3_r2_a*(log(xQ3_r2_ah*100/exp(logy_Q3_r2_ah))))+((xQ3_r2_ah*100)*log(att_q3_r2_a/(xQ3_r2_ah*100))) if gender==2|gender==1
gen ScoreResp_Q3_r2_am=(Res_Q3_r2_a*(log(xQ3_r2_am*100/exp(logy_Q3_r2_am))))+((xQ3_r2_am*100)*log(att_q3_r2_a/(xQ3_r2_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r2_ad=(Res_Q3_r2_a*(log(xQ3_r2_ad*100/exp(logy_Q3_r2_ad))))+((xQ3_r2_ad*100)*log(att_q3_r2_a/(xQ3_r2_ad*100))) if moudur==0|moudur==1

//Q3 r2 b
//x bar
egen xQ3_r2_b=mean(Res_Q3_r2_b)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r2_b=log(att_q3_r2_b)
egen logy_Q3_r2_b=mean(log_att_q3_r2_b)

//x bar femmes
egen xQ3_r2_bf=mean(Res_Q3_r2_b) if gender==2
//x bar hommes
egen xQ3_r2_bh=mean(Res_Q3_r2_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r2_bf=log(att_q3_r2_b) if gender==2
egen logy_Q3_r2_bf=mean(log_att_q3_r2_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r2_bh=log(att_q3_r2_b) if gender==1
egen logy_Q3_r2_bh=mean(log_att_q3_r2_bh) if gender==1

//mettre pour tous le score f et h
replace xQ3_r2_bf=xQ3_r2_bf[_n-1] if xQ3_r2_bf==.
replace xQ3_r2_bf=. if gender==.
replace xQ3_r2_bh=xQ3_r2_bh[_n-1] if xQ3_r2_bh==.
replace xQ3_r2_bh=. if gender==.
replace logy_Q3_r2_bf=logy_Q3_r2_bf[_n-1] if logy_Q3_r2_bf==.
replace logy_Q3_r2_bf=. if gender==.
replace logy_Q3_r2_bh=logy_Q3_r2_bh[_n-1] if logy_Q3_r2_bh==.
replace logy_Q3_r2_bh=. if gender==.

//x bar m
egen xQ3_r2_bm=mean(Res_Q3_r2_b) if moudur==1
//x bar d
egen xQ3_r2_bd=mean(Res_Q3_r2_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r2_bm=log(att_q3_r2_b) if moudur==1
egen logy_Q3_r2_bm=mean(log_att_q3_r2_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r2_bd=log(att_q3_r2_b) if moudur==0
egen logy_Q3_r2_bd=mean(log_att_q3_r2_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r2_bm=xQ3_r2_bm[_n-1] if xQ3_r2_bm==.
replace xQ3_r2_bm=. if moudur==.
replace xQ3_r2_bd=xQ3_r2_bd[_n-1] if xQ3_r2_bd==.
replace xQ3_r2_bd=. if moudur==.
replace logy_Q3_r2_bm=logy_Q3_r2_bm[_n-1] if logy_Q3_r2_bm==.
replace logy_Q3_r2_bm=. if moudur==.
replace logy_Q3_r2_bd=logy_Q3_r2_bd[_n-1] if logy_Q3_r2_bd==.
replace logy_Q3_r2_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r2_b=(Res_Q3_r2_b*(log(xQ3_r2_b*100/exp(logy_Q3_r2_b))))+((xQ3_r2_b*100)*log(att_q3_r2_b/(xQ3_r2_b*100)))
gen ScoreResp_Q3_r2_bf=(Res_Q3_r2_b*(log(xQ3_r2_bf*100/exp(logy_Q3_r2_bf))))+((xQ3_r2_bf*100)*log(att_q3_r2_b/(xQ3_r2_bf*100))) if gender==2|gender==1
gen ScoreResp_Q3_r2_bh=(Res_Q3_r2_b*(log(xQ3_r2_bh*100/exp(logy_Q3_r2_bh))))+((xQ3_r2_bh*100)*log(att_q3_r2_b/(xQ3_r2_bh*100))) if gender==2|gender==1
gen ScoreResp_Q3_r2_bm=(Res_Q3_r2_b*(log(xQ3_r2_bm*100/exp(logy_Q3_r2_bm))))+((xQ3_r2_bm*100)*log(att_q3_r2_b/(xQ3_r2_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r2_bd=(Res_Q3_r2_b*(log(xQ3_r2_bd*100/exp(logy_Q3_r2_bd))))+((xQ3_r2_bd*100)*log(att_q3_r2_b/(xQ3_r2_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q3_r2=ScoreResp_Q3_r2_b+ScoreResp_Q3_r2_a
gen ScoreResp_Q3_r2f=ScoreResp_Q3_r2_bf+ScoreResp_Q3_r2_af
gen ScoreResp_Q3_r2h=ScoreResp_Q3_r2_bh+ScoreResp_Q3_r2_ah
gen ScoreResp_Q3_r2m=ScoreResp_Q3_r2_bm+ScoreResp_Q3_r2_am
gen ScoreResp_Q3_r2d=ScoreResp_Q3_r2_bd+ScoreResp_Q3_r2_ad

	//Q3 r3
gen Res_Q3_r3_a=.
replace Res_Q3_r3_a=1 if q3_r3=="Yes"
replace Res_Q3_r3_a=0 if q3_r3=="No"
label var Res_Q3_r3_a "Responded Yes to Q3_r3 (1/0)"

gen Res_Q3_r3_b=.
replace Res_Q3_r3_b=1 if q3_r3=="No"
replace Res_Q3_r3_b=0 if q3_r3=="Yes"
label var Res_Q3_r3_b "Responded No to Q3_r3 (1/0)"

//Q3 r3 a
//x bar
egen xQ3_r3_a=mean(Res_Q3_r3_a)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r3_a=log(att_q3_r3_a)
egen logy_Q3_r3_a=mean(log_att_q3_r3_a)

//x bar femmes
egen xQ3_r3_af=mean(Res_Q3_r3_a) if gender==2
//x bar hommes
egen xQ3_r3_ah=mean(Res_Q3_r3_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r3_af=log(att_q3_r3_a) if gender==2
egen logy_Q3_r3_af=mean(log_att_q3_r3_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r3_ah=log(att_q3_r3_a) if gender==1
egen logy_Q3_r3_ah=mean(log_att_q3_r3_ah) if gender==1

//mettre pour tous le score f et h
replace xQ3_r3_af=xQ3_r3_af[_n-1] if xQ3_r3_af==.
replace xQ3_r3_af=. if gender==.
replace xQ3_r3_ah=xQ3_r3_ah[_n-1] if xQ3_r3_ah==.
replace xQ3_r3_ah=. if gender==.
replace logy_Q3_r3_af=logy_Q3_r3_af[_n-1] if logy_Q3_r3_af==.
replace logy_Q3_r3_af=. if gender==.
replace logy_Q3_r3_ah=logy_Q3_r3_ah[_n-1] if logy_Q3_r3_ah==.
replace logy_Q3_r3_ah=. if gender==.

//x bar femmes
egen xQ3_r3_am=mean(Res_Q3_r3_a) if moudur==1
//x bar hommes
egen xQ3_r3_ad=mean(Res_Q3_r3_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r3_am=log(att_q3_r3_a) if moudur==1
egen logy_Q3_r3_am=mean(log_att_q3_r3_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r3_ad=log(att_q3_r3_a) if moudur==0
egen logy_Q3_r3_ad=mean(log_att_q3_r3_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r3_am=xQ3_r3_am[_n-1] if xQ3_r3_am==.
replace xQ3_r3_am=. if moudur==.
replace xQ3_r3_ad=xQ3_r3_ad[_n-1] if xQ3_r3_ad==.
replace xQ3_r3_ad=. if moudur==.
replace logy_Q3_r3_am=logy_Q3_r3_am[_n-1] if logy_Q3_r3_am==.
replace logy_Q3_r3_am=. if moudur==.
replace logy_Q3_r3_ad=logy_Q3_r3_ad[_n-1] if logy_Q3_r3_ad==.
replace logy_Q3_r3_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r3_a=(Res_Q3_r3_a*(log(xQ3_r3_a*100/exp(logy_Q3_r3_a))))+((xQ3_r3_a*100)*log(att_q3_r3_a/(xQ3_r3_a*100)))
gen ScoreResp_Q3_r3_af=(Res_Q3_r3_a*(log(xQ3_r3_af*100/exp(logy_Q3_r3_af))))+((xQ3_r3_af*100)*log(att_q3_r3_a/(xQ3_r3_af*100))) if gender==2|gender==1
gen ScoreResp_Q3_r3_ah=(Res_Q3_r3_a*(log(xQ3_r3_ah*100/exp(logy_Q3_r3_ah))))+((xQ3_r3_ah*100)*log(att_q3_r3_a/(xQ3_r3_ah*100))) if gender==2|gender==1
gen ScoreResp_Q3_r3_am=(Res_Q3_r3_a*(log(xQ3_r3_am*100/exp(logy_Q3_r3_am))))+((xQ3_r3_am*100)*log(att_q3_r3_a/(xQ3_r3_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r3_ad=(Res_Q3_r3_a*(log(xQ3_r3_ad*100/exp(logy_Q3_r3_ad))))+((xQ3_r3_ad*100)*log(att_q3_r3_a/(xQ3_r3_ad*100))) if moudur==0|moudur==1

//Q2 r3 b
//x bar
egen xQ3_r3_b=mean(Res_Q3_r3_b)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r3_b=log(att_q3_r3_b)
egen logy_Q3_r3_b=mean(log_att_q3_r3_b)

//x bar femmes
egen xQ3_r3_bf=mean(Res_Q3_r3_b) if gender==2
//x bar hommes
egen xQ3_r3_bh=mean(Res_Q3_r3_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r3_bf=log(att_q3_r3_b) if gender==2
egen logy_Q3_r3_bf=mean(log_att_q3_r3_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r3_bh=log(att_q3_r3_b) if gender==1
egen logy_Q3_r3_bh=mean(log_att_q3_r3_bh) if gender==1

//mettre pour tous le score f et h
replace xQ3_r3_bf=xQ3_r3_bf[_n-1] if xQ3_r3_bf==.
replace xQ3_r3_bf=. if gender==.
replace xQ3_r3_bh=xQ3_r3_bh[_n-1] if xQ3_r3_bh==.
replace xQ3_r3_bh=. if gender==.
replace logy_Q3_r3_bf=logy_Q3_r3_bf[_n-1] if logy_Q3_r3_bf==.
replace logy_Q3_r3_bf=. if gender==.
replace logy_Q3_r3_bh=logy_Q3_r3_bh[_n-1] if logy_Q3_r3_bh==.
replace logy_Q3_r3_bh=. if gender==.

//x bar femmes
egen xQ3_r3_bm=mean(Res_Q3_r3_b) if moudur==1
//x bar hommes
egen xQ3_r3_bd=mean(Res_Q3_r3_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r3_bm=log(att_q3_r3_b) if moudur==1
egen logy_Q3_r3_bm=mean(log_att_q3_r3_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r3_bd=log(att_q3_r3_b) if moudur==0
egen logy_Q3_r3_bd=mean(log_att_q3_r3_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r3_bm=xQ3_r3_bm[_n-1] if xQ3_r3_bm==.
replace xQ3_r3_bm=. if moudur==.
replace xQ3_r3_bd=xQ3_r3_bd[_n-1] if xQ3_r3_bd==.
replace xQ3_r3_bd=. if moudur==.
replace logy_Q3_r3_bm=logy_Q3_r3_bm[_n-1] if logy_Q3_r3_bm==.
replace logy_Q3_r3_bm=. if moudur==.
replace logy_Q3_r3_bd=logy_Q3_r3_bd[_n-1] if logy_Q3_r3_bd==.
replace logy_Q3_r3_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r3_b=(Res_Q3_r3_b*(log(xQ3_r3_b*100/exp(logy_Q3_r3_b))))+((xQ3_r3_b*100)*log(att_q3_r3_b/(xQ3_r3_b*100)))
gen ScoreResp_Q3_r3_bf=(Res_Q3_r3_b*(log(xQ3_r3_bf*100/exp(logy_Q3_r3_bf))))+((xQ3_r3_bf*100)*log(att_q3_r3_b/(xQ3_r3_bf*100))) if gender==2|gender==1
gen ScoreResp_Q3_r3_bh=(Res_Q3_r3_b*(log(xQ3_r3_bh*100/exp(logy_Q3_r3_bh))))+((xQ3_r3_bh*100)*log(att_q3_r3_b/(xQ3_r3_bh*100))) if gender==2|gender==1
gen ScoreResp_Q3_r3_bm=(Res_Q3_r3_b*(log(xQ3_r3_bm*100/exp(logy_Q3_r3_bm))))+((xQ3_r3_bm*100)*log(att_q3_r3_b/(xQ3_r3_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r3_bd=(Res_Q3_r3_b*(log(xQ3_r3_bd*100/exp(logy_Q3_r3_bd))))+((xQ3_r3_bd*100)*log(att_q3_r3_b/(xQ3_r3_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q3_r3=ScoreResp_Q3_r3_b+ScoreResp_Q3_r3_a
gen ScoreResp_Q3_r3f=ScoreResp_Q3_r3_bf+ScoreResp_Q3_r3_af
gen ScoreResp_Q3_r3h=ScoreResp_Q3_r3_bh+ScoreResp_Q3_r3_ah
gen ScoreResp_Q3_r3m=ScoreResp_Q3_r3_bm+ScoreResp_Q3_r3_am
gen ScoreResp_Q3_r3d=ScoreResp_Q3_r3_bd+ScoreResp_Q3_r3_ad

	//Q3 r4
gen Res_Q3_r4_a=.
replace Res_Q3_r4_a=1 if q3_r4=="Yes"
replace Res_Q3_r4_a=0 if q3_r4=="No"
label var Res_Q3_r4_a "Responded Yes to Q3_r4 (1/0)"

gen Res_Q3_r4_b=.
replace Res_Q3_r4_b=1 if q3_r4=="No"
replace Res_Q3_r4_b=0 if q3_r4=="Yes"
label var Res_Q3_r4_b "Responded No to Q3_r4 (1/0)"

//Q3 r4 a
//x bar
egen xQ3_r4_a=mean(Res_Q3_r4_a)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r4_a=log(att_q3_r4_a)
egen logy_Q3_r4_a=mean(log_att_q3_r4_a)

//x bar femmes
egen xQ3_r4_af=mean(Res_Q3_r4_a) if gender==2
//x bar hommes
egen xQ3_r4_ah=mean(Res_Q3_r4_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r4_af=log(att_q3_r4_a) if gender==2
egen logy_Q3_r4_af=mean(log_att_q3_r4_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r4_ah=log(att_q3_r4_a) if gender==1
egen logy_Q3_r4_ah=mean(log_att_q3_r4_ah) if gender==1

//mettre pour tous le score f et h
replace xQ3_r4_af=xQ3_r4_af[_n-1] if xQ3_r4_af==.
replace xQ3_r4_af=. if gender==.
replace xQ3_r4_ah=xQ3_r4_ah[_n-1] if xQ3_r4_ah==.
replace xQ3_r4_ah=. if gender==.
replace logy_Q3_r4_af=logy_Q3_r4_af[_n-1] if logy_Q3_r4_af==.
replace logy_Q3_r4_af=. if gender==.
replace logy_Q3_r4_ah=logy_Q3_r4_ah[_n-1] if logy_Q3_r4_ah==.
replace logy_Q3_r4_ah=. if gender==.

//x bar m
egen xQ3_r4_am=mean(Res_Q3_r4_a) if moudur==1
//x bar d
egen xQ3_r4_ad=mean(Res_Q3_r4_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r4_am=log(att_q3_r4_a) if moudur==1
egen logy_Q3_r4_am=mean(log_att_q3_r4_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r4_ad=log(att_q3_r4_a) if moudur==0
egen logy_Q3_r4_ad=mean(log_att_q3_r4_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r4_am=xQ3_r4_am[_n-1] if xQ3_r4_am==.
replace xQ3_r4_am=. if moudur==.
replace xQ3_r4_ad=xQ3_r4_ad[_n-1] if xQ3_r4_ad==.
replace xQ3_r4_ad=. if moudur==.
replace logy_Q3_r4_am=logy_Q3_r4_am[_n-1] if logy_Q3_r4_am==.
replace logy_Q3_r4_am=. if moudur==.
replace logy_Q3_r4_ad=logy_Q3_r4_ad[_n-1] if logy_Q3_r4_ad==.
replace logy_Q3_r4_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r4_a=(Res_Q3_r4_a*(log(xQ3_r4_a*100/exp(logy_Q3_r4_a))))+((xQ3_r4_a*100)*log(att_q3_r4_a/(xQ3_r4_a*100)))
gen ScoreResp_Q3_r4_af=(Res_Q3_r4_a*(log(xQ3_r4_af*100/exp(logy_Q3_r4_af))))+((xQ3_r4_af*100)*log(att_q3_r4_a/(xQ3_r4_af*100))) if gender==2|gender==1
gen ScoreResp_Q3_r4_ah=(Res_Q3_r4_a*(log(xQ3_r4_ah*100/exp(logy_Q3_r4_ah))))+((xQ3_r4_ah*100)*log(att_q3_r4_a/(xQ3_r4_ah*100))) if gender==2|gender==1
gen ScoreResp_Q3_r4_am=(Res_Q3_r4_a*(log(xQ3_r4_am*100/exp(logy_Q3_r4_am))))+((xQ3_r4_am*100)*log(att_q3_r4_a/(xQ3_r4_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r4_ad=(Res_Q3_r4_a*(log(xQ3_r4_ad*100/exp(logy_Q3_r4_ad))))+((xQ3_r4_ad*100)*log(att_q3_r4_a/(xQ3_r4_ad*100))) if moudur==0|moudur==1

//Q3 r4 b
//x bar
egen xQ3_r4_b=mean(Res_Q3_r4_b)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r4_b=log(att_q3_r4_b)
egen logy_Q3_r4_b=mean(log_att_q3_r4_b)

//x bar femmes
egen xQ3_r4_bf=mean(Res_Q3_r4_b) if gender==2
//x bar hommes
egen xQ3_r4_bh=mean(Res_Q3_r4_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r4_bf=log(att_q3_r4_b) if gender==2
egen logy_Q3_r4_bf=mean(log_att_q3_r4_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r4_bh=log(att_q3_r4_b) if gender==1
egen logy_Q3_r4_bh=mean(log_att_q3_r4_bh) if gender==1

//mettre pour tous le score f et h
replace xQ3_r4_bf=xQ3_r4_bf[_n-1] if xQ3_r4_bf==.
replace xQ3_r4_bf=. if gender==.
replace xQ3_r4_bh=xQ3_r4_bh[_n-1] if xQ3_r4_bh==.
replace xQ3_r4_bh=. if gender==.
replace logy_Q3_r4_bf=logy_Q3_r4_bf[_n-1] if logy_Q3_r4_bf==.
replace logy_Q3_r4_bf=. if gender==.
replace logy_Q3_r4_bh=logy_Q3_r4_bh[_n-1] if logy_Q3_r4_bh==.
replace logy_Q3_r4_bh=. if gender==.

//x bar m
egen xQ3_r4_bm=mean(Res_Q3_r4_b) if moudur==1
//x bar d
egen xQ3_r4_bd=mean(Res_Q3_r4_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r4_bm=log(att_q3_r4_b) if moudur==1
egen logy_Q3_r4_bm=mean(log_att_q3_r4_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r4_bd=log(att_q3_r4_b) if moudur==0
egen logy_Q3_r4_bd=mean(log_att_q3_r4_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r4_bm=xQ3_r4_bm[_n-1] if xQ3_r4_bm==.
replace xQ3_r4_bm=. if moudur==.
replace xQ3_r4_bd=xQ3_r4_bd[_n-1] if xQ3_r4_bd==.
replace xQ3_r4_bd=. if moudur==.
replace logy_Q3_r4_bm=logy_Q3_r4_bm[_n-1] if logy_Q3_r4_bm==.
replace logy_Q3_r4_bm=. if moudur==.
replace logy_Q3_r4_bd=logy_Q3_r4_bd[_n-1] if logy_Q3_r4_bd==.
replace logy_Q3_r4_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r4_b=(Res_Q3_r4_b*(log(xQ3_r4_b*100/exp(logy_Q3_r4_b))))+((xQ3_r4_b*100)*log(att_q3_r4_b/(xQ3_r4_b*100)))
gen ScoreResp_Q3_r4_bf=(Res_Q3_r4_b*(log(xQ3_r4_bf*100/exp(logy_Q3_r4_bf))))+((xQ3_r4_bf*100)*log(att_q3_r4_b/(xQ3_r4_bf*100))) if gender==2|gender==1
gen ScoreResp_Q3_r4_bh=(Res_Q3_r4_b*(log(xQ3_r4_bh*100/exp(logy_Q3_r4_bh))))+((xQ3_r4_bh*100)*log(att_q3_r4_b/(xQ3_r4_bh*100))) if gender==2|gender==1
gen ScoreResp_Q3_r4_bm=(Res_Q3_r4_b*(log(xQ3_r4_bm*100/exp(logy_Q3_r4_bm))))+((xQ3_r4_bm*100)*log(att_q3_r4_b/(xQ3_r4_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r4_bd=(Res_Q3_r4_b*(log(xQ3_r4_bd*100/exp(logy_Q3_r4_bd))))+((xQ3_r4_bd*100)*log(att_q3_r4_b/(xQ3_r4_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q3_r4=ScoreResp_Q3_r4_b+ScoreResp_Q3_r4_a
gen ScoreResp_Q3_r4f=ScoreResp_Q3_r4_bf+ScoreResp_Q3_r4_af
gen ScoreResp_Q3_r4h=ScoreResp_Q3_r4_bh+ScoreResp_Q3_r4_ah
gen ScoreResp_Q3_r4m=ScoreResp_Q3_r4_bm+ScoreResp_Q3_r4_am
gen ScoreResp_Q3_r4d=ScoreResp_Q3_r4_bd+ScoreResp_Q3_r4_ad

	//Q3 r5
gen Res_Q3_r5_a=.
replace Res_Q3_r5_a=1 if q3_r5=="Yes"
replace Res_Q3_r5_a=0 if q3_r5=="No"
label var Res_Q3_r5_a "Responded Yes to Q3_r5 (1/0)"

gen Res_Q3_r5_b=.
replace Res_Q3_r5_b=1 if q3_r5=="No"
replace Res_Q3_r5_b=0 if q3_r5=="Yes"
label var Res_Q3_r5_b "Responded No to Q3_r5 (1/0)"

//Q3 r5 a
//x bar
egen xQ3_r5_a=mean(Res_Q3_r5_a)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r5_a=log(att_q3_r5_a)
egen logy_Q3_r5_a=mean(log_att_q3_r5_a)

//x bar femmes
egen xQ3_r5_af=mean(Res_Q3_r5_a) if gender==2
//x bar hommes
egen xQ3_r5_ah=mean(Res_Q3_r5_a) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r5_af=log(att_q3_r5_a) if gender==2
egen logy_Q3_r5_af=mean(log_att_q3_r5_af) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r5_ah=log(att_q3_r5_a) if gender==1
egen logy_Q3_r5_ah=mean(log_att_q3_r5_ah) if gender==1

//mettre pour tous le score f et h
replace xQ3_r5_af=xQ3_r5_af[_n-1] if xQ3_r5_af==.
replace xQ3_r5_af=. if gender==.
replace xQ3_r5_ah=xQ3_r5_ah[_n-1] if xQ3_r5_ah==.
replace xQ3_r5_ah=. if gender==.
replace logy_Q3_r5_af=logy_Q3_r5_af[_n-1] if logy_Q3_r5_af==.
replace logy_Q3_r5_af=. if gender==.
replace logy_Q3_r5_ah=logy_Q3_r5_ah[_n-1] if logy_Q3_r5_ah==.
replace logy_Q3_r5_ah=. if gender==.

//x bar m
egen xQ3_r5_am=mean(Res_Q3_r5_a) if moudur==1
//x bar d
egen xQ3_r5_ad=mean(Res_Q3_r5_a) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r5_am=log(att_q3_r5_a) if moudur==1
egen logy_Q3_r5_am=mean(log_att_q3_r5_am) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r5_ad=log(att_q3_r5_a) if moudur==0
egen logy_Q3_r5_ad=mean(log_att_q3_r5_ad) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r5_am=xQ3_r5_am[_n-1] if xQ3_r5_am==.
replace xQ3_r5_am=. if moudur==.
replace xQ3_r5_ad=xQ3_r5_ad[_n-1] if xQ3_r5_ad==.
replace xQ3_r5_ad=. if moudur==.
replace logy_Q3_r5_am=logy_Q3_r5_am[_n-1] if logy_Q3_r5_am==.
replace logy_Q3_r5_am=. if moudur==.
replace logy_Q3_r5_ad=logy_Q3_r5_ad[_n-1] if logy_Q3_r5_ad==.
replace logy_Q3_r5_ad=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r5_a=(Res_Q3_r5_a*(log(xQ3_r5_a*100/exp(logy_Q3_r5_a))))+((xQ3_r5_a*100)*log(att_q3_r5_a/(xQ3_r5_a*100)))
gen ScoreResp_Q3_r5_af=(Res_Q3_r5_a*(log(xQ3_r5_af*100/exp(logy_Q3_r5_af))))+((xQ3_r5_af*100)*log(att_q3_r5_a/(xQ3_r5_af*100))) if gender==2|gender==1
gen ScoreResp_Q3_r5_ah=(Res_Q3_r5_a*(log(xQ3_r5_ah*100/exp(logy_Q3_r5_ah))))+((xQ3_r5_ah*100)*log(att_q3_r5_a/(xQ3_r5_ah*100))) if gender==2|gender==1
gen ScoreResp_Q3_r5_am=(Res_Q3_r5_a*(log(xQ3_r5_am*100/exp(logy_Q3_r5_am))))+((xQ3_r5_am*100)*log(att_q3_r5_a/(xQ3_r5_am*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r5_ad=(Res_Q3_r5_a*(log(xQ3_r5_ad*100/exp(logy_Q3_r5_ad))))+((xQ3_r5_ad*100)*log(att_q3_r5_a/(xQ3_r5_ad*100))) if moudur==0|moudur==1

//Q3 r5 b
//x bar
egen xQ3_r5_b=mean(Res_Q3_r5_b)

//y bar = exp((sum of logy)/n)
gen log_att_q3_r5_b=log(att_q3_r5_b)
egen logy_Q3_r5_b=mean(log_att_q3_r5_b)

//x bar femmes
egen xQ3_r5_bf=mean(Res_Q3_r5_b) if gender==2
//x bar hommes
egen xQ3_r5_bh=mean(Res_Q3_r5_b) if gender==1
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r5_bf=log(att_q3_r5_b) if gender==2
egen logy_Q3_r5_bf=mean(log_att_q3_r5_bf) if gender==2
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r5_bh=log(att_q3_r5_b) if gender==1
egen logy_Q3_r5_bh=mean(log_att_q3_r5_bh) if gender==1

//mettre pour tous le score f et h
replace xQ3_r5_bf=xQ3_r5_bf[_n-1] if xQ3_r5_bf==.
replace xQ3_r5_bf=. if gender==.
replace xQ3_r5_bh=xQ3_r5_bh[_n-1] if xQ3_r5_bh==.
replace xQ3_r5_bh=. if gender==.
replace logy_Q3_r5_bf=logy_Q3_r5_bf[_n-1] if logy_Q3_r5_bf==.
replace logy_Q3_r5_bf=. if gender==.
replace logy_Q3_r5_bh=logy_Q3_r5_bh[_n-1] if logy_Q3_r5_bh==.
replace logy_Q3_r5_bh=. if gender==.

//x bar m
egen xQ3_r5_bm=mean(Res_Q3_r5_b) if moudur==1
//x bar d
egen xQ3_r5_bd=mean(Res_Q3_r5_b) if moudur==0
//y bar = exp((sum of logy)/n) f
gen log_att_q3_r5_bm=log(att_q3_r5_b) if moudur==1
egen logy_Q3_r5_bm=mean(log_att_q3_r5_bm) if moudur==1
//y bar = exp((sum of logy)/n) h
gen log_att_q3_r5_bd=log(att_q3_r5_b) if moudur==0
egen logy_Q3_r5_bd=mean(log_att_q3_r5_bd) if moudur==0

//mettre pour tous le score f et h
replace xQ3_r5_bm=xQ3_r5_bm[_n-1] if xQ3_r5_bm==.
replace xQ3_r5_bm=. if moudur==.
replace xQ3_r5_bd=xQ3_r5_bd[_n-1] if xQ3_r5_bd==.
replace xQ3_r5_bd=. if moudur==.
replace logy_Q3_r5_bm=logy_Q3_r5_bm[_n-1] if logy_Q3_r5_bm==.
replace logy_Q3_r5_bm=. if moudur==.
replace logy_Q3_r5_bd=logy_Q3_r5_bd[_n-1] if logy_Q3_r5_bd==.
replace logy_Q3_r5_bd=. if moudur==.

//Score for respondent
gen ScoreResp_Q3_r5_b=(Res_Q3_r5_b*(log(xQ3_r5_b*100/exp(logy_Q3_r5_b))))+((xQ3_r5_b*100)*log(att_q3_r5_b/(xQ3_r5_b*100)))
gen ScoreResp_Q3_r5_bf=(Res_Q3_r5_b*(log(xQ3_r5_bf*100/exp(logy_Q3_r5_bf))))+((xQ3_r5_bf*100)*log(att_q3_r5_b/(xQ3_r5_bf*100))) if gender==2|gender==1
gen ScoreResp_Q3_r5_bh=(Res_Q3_r5_b*(log(xQ3_r5_bh*100/exp(logy_Q3_r5_bh))))+((xQ3_r5_bh*100)*log(att_q3_r5_b/(xQ3_r5_bh*100))) if gender==2|gender==1
gen ScoreResp_Q3_r5_bm=(Res_Q3_r5_b*(log(xQ3_r5_bm*100/exp(logy_Q3_r5_bm))))+((xQ3_r5_bm*100)*log(att_q3_r5_b/(xQ3_r5_bm*100))) if moudur==0|moudur==1
gen ScoreResp_Q3_r5_bd=(Res_Q3_r5_b*(log(xQ3_r5_bd*100/exp(logy_Q3_r5_bd))))+((xQ3_r5_bd*100)*log(att_q3_r5_b/(xQ3_r5_bd*100))) if moudur==0|moudur==1

gen ScoreResp_Q3_r5=ScoreResp_Q3_r5_b+ScoreResp_Q3_r5_a
gen ScoreResp_Q3_r5f=ScoreResp_Q3_r5_bf+ScoreResp_Q3_r5_af
gen ScoreResp_Q3_r5h=ScoreResp_Q3_r5_bh+ScoreResp_Q3_r5_ah
gen ScoreResp_Q3_r5m=ScoreResp_Q3_r5_bm+ScoreResp_Q3_r5_am
gen ScoreResp_Q3_r5d=ScoreResp_Q3_r5_bd+ScoreResp_Q3_r5_ad

gen ScoreQ1f=ScoreResp_Q1f
replace ScoreQ1f=. if gender==1
gen ScoreQ1h=ScoreResp_Q1h
replace ScoreQ1h=. if gender==2

gen ScoreQ2r1f=ScoreResp_Q2_r1f
replace ScoreQ2r1f=. if gender==1
gen ScoreQ2r1h=ScoreResp_Q2_r1h
replace ScoreQ2r1h=. if gender==2

gen ScoreQ2r2f=ScoreResp_Q2_r2f
replace ScoreQ2r2f=. if gender==1
gen ScoreQ2r2h=ScoreResp_Q2_r2h
replace ScoreQ2r2h=. if gender==2

gen ScoreQ2r3f=ScoreResp_Q2_r3f
replace ScoreQ2r3f=. if gender==1
gen ScoreQ2r3h=ScoreResp_Q2_r3h
replace ScoreQ2r3h=. if gender==2

gen ScoreQ2r4f=ScoreResp_Q2_r4f
replace ScoreQ2r4f=. if gender==1
gen ScoreQ2r4h=ScoreResp_Q2_r4h
replace ScoreQ2r4h=. if gender==2

gen ScoreQ2r5f=ScoreResp_Q2_r5f
replace ScoreQ2r5f=. if gender==1
gen ScoreQ2r5h=ScoreResp_Q2_r5h
replace ScoreQ2r5h=. if gender==2

gen ScoreQ3r1f=ScoreResp_Q3_r1f
replace ScoreQ3r1f=. if gender==1
gen ScoreQ3r1h=ScoreResp_Q3_r1h
replace ScoreQ3r1h=. if gender==2

gen ScoreQ3r2f=ScoreResp_Q3_r2f
replace ScoreQ3r2f=. if gender==1
gen ScoreQ3r2h=ScoreResp_Q3_r2h
replace ScoreQ3r2h=. if gender==2

gen ScoreQ3r3f=ScoreResp_Q3_r3f
replace ScoreQ3r3f=. if gender==1
gen ScoreQ3r3h=ScoreResp_Q3_r3h
replace ScoreQ3r3h=. if gender==2

gen ScoreQ3r4f=ScoreResp_Q3_r4f
replace ScoreQ3r4f=. if gender==1
gen ScoreQ3r4h=ScoreResp_Q3_r4h
replace ScoreQ3r4h=. if gender==2

gen ScoreQ3r5f=ScoreResp_Q3_r5f
replace ScoreQ3r5f=. if gender==1
gen ScoreQ3r5h=ScoreResp_Q3_r5h
replace ScoreQ3r5h=. if gender==2

//moudur
gen ScoreQ1m=ScoreResp_Q1m
replace ScoreQ1m=. if moudur==0
gen ScoreQ1d=ScoreResp_Q1d
replace ScoreQ1d=. if moudur==1

gen ScoreQ2r1m=ScoreResp_Q2_r1m
replace ScoreQ2r1m=. if moudur==0
gen ScoreQ2r1d=ScoreResp_Q2_r1d
replace ScoreQ2r1d=. if moudur==1

gen ScoreQ2r2m=ScoreResp_Q2_r2m
replace ScoreQ2r2m=. if moudur==0
gen ScoreQ2r2d=ScoreResp_Q2_r2d
replace ScoreQ2r2d=. if moudur==1

gen ScoreQ2r3m=ScoreResp_Q2_r3m
replace ScoreQ2r3m=. if moudur==0
gen ScoreQ2r3d=ScoreResp_Q2_r3d
replace ScoreQ2r3d=. if moudur==1

gen ScoreQ2r4m=ScoreResp_Q2_r4m
replace ScoreQ2r4m=. if moudur==0
gen ScoreQ2r4d=ScoreResp_Q2_r4d
replace ScoreQ2r4d=. if moudur==1

gen ScoreQ2r5m=ScoreResp_Q2_r5m
replace ScoreQ2r5m=. if moudur==0
gen ScoreQ2r5d=ScoreResp_Q2_r5d
replace ScoreQ2r5d=. if moudur==1

gen ScoreQ3r1m=ScoreResp_Q3_r1m
replace ScoreQ3r1m=. if moudur==0
gen ScoreQ3r1d=ScoreResp_Q3_r1d
replace ScoreQ3r1d=. if moudur==1

gen ScoreQ3r2m=ScoreResp_Q3_r2m
replace ScoreQ3r2m=. if moudur==0
gen ScoreQ3r2d=ScoreResp_Q3_r2d
replace ScoreQ3r2d=. if moudur==1

gen ScoreQ3r3m=ScoreResp_Q3_r3m
replace ScoreQ3r3m=. if moudur==0
gen ScoreQ3r3d=ScoreResp_Q3_r3d
replace ScoreQ3r3d=. if moudur==1

gen ScoreQ3r4m=ScoreResp_Q3_r4m
replace ScoreQ3r4m=. if moudur==0
gen ScoreQ3r4d=ScoreResp_Q3_r4d
replace ScoreQ3r4d=. if moudur==1

gen ScoreQ3r5m=ScoreResp_Q3_r5m
replace ScoreQ3r5m=. if gender==0
gen ScoreQ3r5d=ScoreResp_Q3_r5d
replace ScoreQ3r5d=. if moudur==1

drop if att_q3_r5_b==.

//Générer une variable qui compte le nombre d'observation pour chaque questions (pour x et pour y) ScoreResp_Q1
egen countScoreQ1=count(ScoreResp_Q1)
egen countQ1= count(q1)
gen diffXYQ1 = (countQ1-countScoreQ1)

egen countScoreQ2r1=count(ScoreResp_Q2_r1)
egen countQ2r1= count(q2_r1)
gen diffXYQ2r1= (countQ2r1-countScoreQ2r1)

egen countScoreQ2r2=count(ScoreResp_Q2_r2)
egen countQ2r2= count(q2_r2)
gen diffXYQ2r2= (countQ2r2-countScoreQ2r2)

egen countScoreQ2r3=count(ScoreResp_Q2_r3)
egen countQ2r3= count(q2_r3)
gen diffXYQ2r3= (countQ2r3-countScoreQ2r3)

egen countScoreQ2r4=count(ScoreResp_Q2_r4)
egen countQ2r4= count(q2_r4)
gen diffXYQ2r4= (countQ2r4-countScoreQ2r4)

egen countScoreQ2r5=count(ScoreResp_Q2_r5)
egen countQ2r5= count(q2_r5)
gen diffXYQ2r5= (countQ2r5-countScoreQ2r5)

egen countScoreQ3r1=count(ScoreResp_Q3_r1)
egen countQ3r1= count(q3_r1)
gen diffXYQ3r1= (countQ3r1-countScoreQ3r1)

egen countScoreQ3r2=count(ScoreResp_Q3_r2)
egen countQ3r2= count(q3_r2)
gen diffXYQ3r2= (countQ3r2-countScoreQ3r2)

egen countScoreQ3r3=count(ScoreResp_Q3_r3)
egen countQ3r3= count(q3_r3)
gen diffXYQ3r3= (countQ3r3-countScoreQ3r3)

egen countScoreQ3r4=count(ScoreResp_Q3_r4)
egen countQ3r4= count(q3_r4)
gen diffXYQ3r4= (countQ3r4-countScoreQ3r4)

egen countScoreQ3r5=count(ScoreResp_Q3_r5)
egen countQ3r5= count(q3_r5)
gen diffXYQ3r5= (countQ3r5-countScoreQ3r5)



