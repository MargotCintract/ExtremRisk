		//ANA12

cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape

//Q1
graph box att_q1_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q1, label(labsize(small))) ytitle(Expectations for the response No) title(Expectations for the response -No-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export a.png, replace
putdocx paragraph, halign(center)
putdocx image a.png

graph box att_q1_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q1, label(labsize(small))) ytitle(Expectations for the response Yes without consequences) title(Expectations for the response -Yes without consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export b.png, replace
putdocx paragraph, halign(center)
putdocx image b.png

graph box att_q1_c if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q1, label(labsize(small))) ytitle(Expectations for the response Yes with consequences) title(Expectations for the response -Yes with consequences-) subtitle(depending on individual answers to Q1, size(large) color(dknavy))
graph export c.png, replace
putdocx paragraph, halign(center)
putdocx image c.png

putdocx save ANA12.docx, replace
