		//ANA 4
//Depending on what take more risk
cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"

putdocx begin, font(, 12) landscape

//gender WORKS WELL - DID not take others and NA
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q2_r1) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could make", size(medlarge))) by(,subtitle("humanity disappear (1 chance/100 billion)?", size(medlarge) color(dknavy))) by(gender) 
graph save a
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q2_r2) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could make", size(medlarge))) by(,subtitle("humanity disappear (1 chance/10 billion)?", size(medlarge) color(dknavy))) by(gender) 
graph save b
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q2_r3) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could make", size(medlarge))) by(,subtitle("humanity disappear (1 chance/1 billion)?", size(medlarge) color(dknavy))) by(gender) 
graph save c
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q2_r4) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could make", size(medlarge))) by(,subtitle("humanity disappear (1 chance/100 million)?", size(medlarge) color(dknavy))) by(gender) 
graph save d
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q2_r5) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could make", size(medlarge))) by(,subtitle("humanity disappear (1 chance/10 million)?", size(medlarge) color(dknavy))) by(gender) 
graph save e

graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q3_r1) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could", size(medlarge))) by(,subtitle("kill you was (1 chance/1 million?)", size(medlarge) color(dknavy))) by(gender) 
graph save f
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q3_r2) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could", size(medlarge))) by(,subtitle("kill you was (1 chance/300 000?)", size(medlarge) color(dknavy))) by(gender) 
graph save g
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q3_r3) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could", size(medlarge))) by(,subtitle("kill you was (1 chance/100 000?)", size(medlarge) color(dknavy))) by(gender) 
graph save h
graph pie if (q3_r5=="No"|q3_r5=="Yes")&(gender==1|gender==2), over(q3_r4) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could", size(medlarge))) by(,subtitle("kill you was (1 chance/10 000?)", size(medlarge) color(dknavy))) by(gender) 
graph save i
graph pie if gender==1|gender==2, over(q3_r5) cw plabel(_all percent, color(white) size(medium)) pie(1, color("110 0 0")) pie(2, color(navy)) by(, title("Would you use the vaccine if it could", size(medlarge))) by(,subtitle("kill you was (1 chance/1 000?)", size(medlarge) color(dknavy))) by(gender) 
graph save j

//Combine q2 r1 and q3_r1
putdocx paragraph
graph combine a.gph f.gph, note("Those graphs concern only respondents who responded to questions about the risk", size(small) color(black)) caption("of being killed by the virus.", size(small) color(black))
graph export a-f.png, replace
putdocx paragraph, halign(center)
putdocx image a-f.png

graph combine b.gph g.gph, note("Those graphs concern only respondents who responded to questions about the risk", size(small) color(black)) caption("of being killed by the virus.", size(small) color(black))
graph export b-g.png, replace
putdocx paragraph, halign(center)
putdocx image b-g.png

graph combine c.gph h.gph, note("Those graphs concern only respondents who responded to questions about the risk", size(small) color(black)) caption("of being killed by the virus.", size(small) color(black))
graph export c-h.png, replace
putdocx paragraph, halign(center)
putdocx image c-h.png

graph combine d.gph i.gph, note("Those graphs concern only respondents who responded to questions about the risk", size(small) color(black)) caption("of being killed by the virus.", size(small) color(black))
graph export d-i.png, replace
putdocx paragraph, halign(center)
putdocx image d-i.png

graph combine e.gph j.gph, note("Those graphs concern only respondents who responded to questions about the risk", size(small) color(black)) caption("of being killed by the virus.", size(small) color(black))
graph export e-j.png, replace
putdocx paragraph, halign(center)
putdocx image e-j.png

putdocx save ANA4.docx, replace





