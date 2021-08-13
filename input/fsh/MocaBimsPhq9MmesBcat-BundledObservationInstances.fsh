//Alias:  LNC = http://loinc.org
//Alias:  CAT = http://terminology.hl7.org/CodeSystem/observation-category

Instance: CSC-SNF-BCAT-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
//* code = LNC#TBD-LOINC1
//* code.coding.display = "Brief Cognitive Assessment Tool [BCAT]"
* code.text = "Brief Cognitive Assessment Tool [BCAT]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* hasMember[0] = Reference(CSC-SNF-BCAT-1-Ob-Question-30)
* derivedFrom = Reference(QResponse-SNF-BCAT-1)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-SNF-BIMS-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52491-8
* code.coding.display = "Brief interview for mental status [BIMS]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* hasMember[0] = Reference(CSC-SNF-BIMS-1-Ob-Question-3)
* hasMember[1] = Reference(CSC-SNF-BIMS-1-Ob-Question-4)
* hasMember[2] = Reference(CSC-SNF-BIMS-1-Ob-Question-5)
* hasMember[3] = Reference(CSC-SNF-BIMS-1-Ob-Question-6)
* hasMember[4] = Reference(CSC-SNF-BIMS-1-Ob-Question-7)
* hasMember[5] = Reference(CSC-SNF-BIMS-1-Ob-Question-8)
* hasMember[6] = Reference(CSC-SNF-BIMS-1-Ob-Question-9)
* hasMember[7] = Reference(CSC-SNF-BIMS-1-Ob-Question-10)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-Hospital-MOCA-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-08T17:32:00-05:00"
* code = LNC#72133-2
* code.coding.display = "Montreal Cognitive Assessment [MoCA]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* hasMember[0] = Reference(CSC-Hospital-MOCA-1-Ob-Question-1)
* derivedFrom = Reference(QResponse-Hospital-MOCA-1)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-Hospital-MOCA-2
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-10T12:16:00-05:00"
* code = LNC#72133-2
* code.coding.display = "Montreal Cognitive Assessment [MoCA]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* hasMember[0] = Reference(CSC-Hospital-MOCA-2-Ob-Question-2)
* derivedFrom = Reference(QResponse-Hospital-MOCA-2)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-SNF-PHQ9-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54635-8
* code.coding.display = "Resident mood interview (PHQ-9) [Reported PHQ-9 CMS]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* hasMember[0] = Reference(CSC-SNF-PHQ9-1-Ob-Question-11)
* hasMember[1] = Reference(CSC-SNF-PHQ9-1-Ob-Question-12)
* hasMember[2] = Reference(CSC-SNF-PHQ9-1-Ob-Question-13)
* hasMember[3] = Reference(CSC-SNF-PHQ9-1-Ob-Question-14)
* hasMember[4] = Reference(CSC-SNF-PHQ9-1-Ob-Question-15)
* hasMember[5] = Reference(CSC-SNF-PHQ9-1-Ob-Question-16)
* hasMember[6] = Reference(CSC-SNF-PHQ9-1-Ob-Question-17)
* hasMember[7] = Reference(CSC-SNF-PHQ9-1-Ob-Question-18)
* hasMember[8] = Reference(CSC-SNF-PHQ9-1-Ob-Question-19)
* hasMember[9] = Reference(CSC-SNF-PHQ9-1-Ob-Question-20)
* hasMember[10] = Reference(CSC-SNF-PHQ9-1-Ob-Question-21)
* hasMember[11] = Reference(CSC-SNF-PHQ9-1-Ob-Question-22)
* hasMember[12] = Reference(CSC-SNF-PHQ9-1-Ob-Question-23)
* hasMember[13] = Reference(CSC-SNF-PHQ9-1-Ob-Question-24)
* hasMember[14] = Reference(CSC-SNF-PHQ9-1-Ob-Question-25)
* hasMember[15] = Reference(CSC-SNF-PHQ9-1-Ob-Question-26)
* hasMember[16] = Reference(CSC-SNF-PHQ9-1-Ob-Question-27)
* hasMember[17] = Reference(CSC-SNF-PHQ9-1-Ob-Question-28)
* hasMember[18] = Reference(CSC-SNF-PHQ9-1-Ob-Question-29)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-Hospital-MMSE-2
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-10T12:16:00-05:00"
* code = LNC#72107-6
* code.coding.display = "Mini-Mental State Examination [MMSE]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* hasMember[0] = Reference(CSC-Hospital-MMSE-2-Ob-Question-32)
* derivedFrom = Reference(QResponse-Hospital-MMSE-2)
* derivedFrom.display = "Questionnaire Response"

Instance: CSC-Hospital-MMSE-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-08T17:32:00-05:00"
* code = LNC#72107-6
* code.coding.display = "Mini-Mental State Examination [MMSE]"
* category[1].coding = CAT#survey
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* hasMember[0] = Reference(CSC-Hospital-MMSE-1-Ob-Question-31)
* derivedFrom = Reference(QResponse-Hospital-MMSE-1)
* derivedFrom.display = "Questionnaire Response"
