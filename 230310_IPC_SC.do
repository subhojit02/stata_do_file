******IPV NFHS-5****

To gen SC DV in India

tab v044
labellist v044
keep if v044==1
(651,795 observations deleted)
ta v044
**n = 72,320**

**To get SC sample**
ta s116
labellist s116
keep if s116==1
***(58,693 observations deleted from because they were not fallen under Scheduled Caste (SC) category)
n = 13,627

*sample weight*
gen wt=v005/1000000
svyset v021 [pw=wt]

tab s116 [aw=wt]
svy: tab sdist anemia, row percent ci 

save, replace

*****We use "|" symbol because we tell stata that take those person of xyz variable and next take those person of next xyz vraibe****