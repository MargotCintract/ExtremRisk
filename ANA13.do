		//ANA13

cd "C:\Users\Gotmar\Desktop\margot\stage thema\covid data"
putdocx begin, font(, 12) landscape

//Q2
graph box att_q2_r1_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/100 billion, size(large) color(dknavy))
graph export 1.png, replace
putdocx paragraph, halign(center)
putdocx image 1.png
graph box att_q2_r1_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/100 billion, size(large) color(dknavy))
graph export 2.png, replace
putdocx paragraph, halign(center)
putdocx image 2.png

graph box att_q2_r2_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/10 billion, size(large) color(dknavy))
graph export 3.png, replace
putdocx paragraph, halign(center)
putdocx image 3.png
graph box att_q2_r2_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/10 billion, size(large) color(dknavy))
graph export 4.png, replace
putdocx paragraph, halign(center)
putdocx image 4.png

graph box att_q2_r3_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/1 billion, size(large) color(dknavy))
graph export 5.png, replace
putdocx paragraph, halign(center)
putdocx image 5.png
graph box att_q2_r3_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/1 billion, size(large) color(dknavy))
graph export 6.png, replace
putdocx paragraph, halign(center)
putdocx image 6.png

graph box att_q2_r4_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/100 million, size(large) color(dknavy))
graph export 7.png, replace
putdocx paragraph, halign(center)
putdocx image 7.png
graph box att_q2_r4_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/100 million, size(large) color(dknavy))
graph export 8.png, replace
putdocx paragraph, halign(center)
putdocx image 8.png

graph box att_q2_r5_a if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response Yes) title(Expectations for the response -Yes- depending) subtitle(on individual answers to Q2 with a risk of 1/10 million, size(large) color(dknavy))
graph export 9.png, replace
putdocx paragraph, halign(center)
putdocx image 9.png
graph box att_q2_r5_b if moudur!=3&moudur!=2, over(moudur, label(angle(forty_five) labsize(small))) over(q2_r1, label(labsize(small)))  ytitle(Expectations for the response No) title(Expectations for the response -No- depending) subtitle(on individual answers to Q2 with a risk of 1/10 million, size(large) color(dknavy))
graph export 10.png, replace
putdocx paragraph, halign(center)
putdocx image 10.png

putdocx save ANA13.docx, replace
