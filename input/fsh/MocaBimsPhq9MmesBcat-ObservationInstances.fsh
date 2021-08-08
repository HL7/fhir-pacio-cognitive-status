Alias: LNC = http://loinc.org
Alias: UOM = http://unitsofmeasure.org
Alias: DAR = http://terminology.hl7.org/CodeSystem/data-absent-reason

Instance: CSC-SNF-BIMS-1-Ob-Question-4
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52732-5
* code.text = "Able to report correct year"
* code.coding.display = "Temporal orientation - current year [BIMS]"
* valueCodeableConcept = LNC#LA10008-3
* valueCodeableConcept.text = "Missed by 1 year"
* valueCodeableConcept.coding.display = "Missed by 1 year"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-Hospital-MOCA-2-Ob-Question-2
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-10T12:16:00-05:00"
* code = LNC#72172-0
//* code.text = "MoCA"
* code.coding.display = "Total score [MoCA]"
* valueQuantity = 22 UOM#{score}
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* derivedFrom = Reference(QResponse-Hospital-MOCA-2)

Instance: CSC-SNF-PHQ9-1-Ob-Question-18
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54643-2
* code.text = "Feeling tired or having little energy"
* code.coding.display = "Feeling tired or having little energy in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10997-7
* valueCodeableConcept.text = "Never or 1 day"
* valueCodeableConcept.coding.display = "Never or 1 day"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-19
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54644-0
* code.text = "Poor appetite or overeating"
* code.coding.display = "Poor appetite or overeating in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-14
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54639-0
* code.text = "Feeling down"
* code.coding.display = "Feeling down, depressed or hopeless in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10998-5
* valueCodeableConcept.text = "2-6 days (several days)"
* valueCodeableConcept.coding.display = "2-6 days (several days)"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-15
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54640-8
* code.text = "Trouble falling or staying asleep"
* code.coding.display = "Trouble falling or staying asleep, or sleeping too much in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA33-6
* valueCodeableConcept.text = "Yes"
* valueCodeableConcept.coding.display = "Yes"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-16
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54641-6
* code.text = "Trouble falling or staying asleep"
* code.coding.display = "Trouble falling or staying asleep, or sleeping too much in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10998-5
* valueCodeableConcept.text = "2-6 days (several days)"
* valueCodeableConcept.coding.display = "2-6 days (several days)"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-Hospital-MMSE-2-Ob-Question-32
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-10T12:16:00-05:00"
* code = LNC#72106-8
* code.text = "Total score [MMSE]"
* code.coding.display = "Total score [MMSE]"
* valueQuantity = 24 UOM#{score}
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* derivedFrom = Reference(QResponse-Hospital-MMSE-2)

Instance: CSC-SNF-PHQ9-1-Ob-Question-11
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54636-6
* code.text = "Little interest or pleasure in doing things"
* code.coding.display = "Little interest or pleasure in doing things in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA33-6
* valueCodeableConcept.text = "Yes"
* valueCodeableConcept.coding.display = "Yes"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-12
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54637-4
* code.text = "Little interest or pleasure in doing things"
* code.coding.display = "Little interest or pleasure in doing things in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10998-5
* valueCodeableConcept.text = "2-6 days (several days)"
* valueCodeableConcept.coding.display = "2-6 days (several days)"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-13
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54638-2
* code.text = "Feeling down"
* code.coding.display = "Feeling down, depressed or hopeless in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA33-6
* valueCodeableConcept.text = "Yes"
* valueCodeableConcept.coding.display = "Yes"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-17
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54642-4
* code.text = "Feeling tired or having little energy"
* code.coding.display = "Feeling tired or having little energy in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-Hospital-MMSE-1-Ob-Question-31
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-08T17:32:00-05:00"
* code = LNC#72106-8
* code.text = "Total score [MMSE]"
* code.coding.display = "Total score [MMSE]"
* valueQuantity = 20 UOM#{score}
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* derivedFrom = Reference(QResponse-Hospital-MMSE-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-25
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54650-7
* code.text = "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual"
* code.coding.display = "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-24
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54649-9
* code.text = "Trouble concentrating on things"
* code.coding.display = "Trouble concentrating on things, such as reading the newspaper or watching television in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10997-7
* valueCodeableConcept.text = "Never or 1 day"
* valueCodeableConcept.coding.display = "Never or 1 day"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-27
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54652-3
* code.text = "Thoughts that you would be better off dead"
* code.coding.display = "Thoughts that you would be better off dead, or of hurting yourself in some way in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10996-9
* valueCodeableConcept.text = "No response"
* valueCodeableConcept.coding.display = "No response"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-26
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54651-5
* code.text = "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual"
* code.coding.display = "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10997-7
* valueCodeableConcept.text = "Never or 1 day"
* valueCodeableConcept.coding.display = "Never or 1 day"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-21
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54646-5
* code.text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* code.coding.display = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-20
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54645-7
* code.text = "Poor appetite or overeating"
* code.coding.display = "Poor appetite or overeating in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10997-7
* valueCodeableConcept.text = "Never or 1 day"
* valueCodeableConcept.coding.display = "Never or 1 day"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-23
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54648-1
* code.text = "Trouble concentrating on things"
* code.coding.display = "Trouble concentrating on things, such as reading the newspaper or watching television in last 2 weeks.presence [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-22
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54647-3
* code.text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* code.coding.display = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* valueCodeableConcept = LNC#LA10997-7
* valueCodeableConcept.text = "Never or 1 day"
* valueCodeableConcept.coding.display = "Never or 1 day"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-29
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54654-9
* code.text = "Total Severity Score"
* code.coding.display = "Mood interview total severity score [Reported PHQ-9 CMS]"
* valueQuantity = 3 UOM#{score}
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-PHQ9-1-Ob-Question-28
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54653-1
* code.text = "Thoughts that you would be better off dead"
* code.coding.display = "Thoughts that you would be better off dead, or of hurting yourself in some way in last 2 weeks.frequency [Reported PHQ-9 CMS]"
* dataAbsentReason = DAR#not-asked
* dataAbsentReason.coding.display = "Not Asked"
* performer = Reference(Role-SLP-LunaBaskins)
* extension[event-location].valueReference = Reference(Org-Loc-03)
* derivedFrom = Reference(QResponse-SNF-PHQ9-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-9
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52737-4
* code.text = "Able to recall 'bed'"
* code.coding.display = "Recall - bed [BIMS]"
* valueCodeableConcept = LNC#LA10125-5
* valueCodeableConcept.text = "Yes, after cueing ('a piece of furniture')"
* valueCodeableConcept.coding.display = "Yes, after cueing ('a piece of furniture')"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-8
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52736-6
* code.text = "Able to recall 'blue'"
* code.coding.display = "Recall - blue [BIMS]"
* valueCodeableConcept = LNC#LA10978-7
* valueCodeableConcept.text = "Yes, after cueing ('a color')"
* valueCodeableConcept.coding.display = "Yes, after cueing ('a color')"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-7
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52735-8
* code.text = "Able to recall 'sock'"
* code.coding.display = "Recall - sock [BIMS]"
* valueCodeableConcept = LNC#LA10126-3
* valueCodeableConcept.text = "Yes, after cueing ('something to wear')"
* valueCodeableConcept.coding.display = "Yes, after cueing ('something to wear')"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-6
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54609-3
* code.text = "Able to report correct day of the week"
* code.coding.display = "Temporal orientation - current day of the week [BIMS]"
* valueCodeableConcept = LNC#LA9960-1
* valueCodeableConcept.text = "Correct"
* valueCodeableConcept.coding.display = "Correct"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-5
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52733-3
* code.text = "Able to report correct month"
* code.coding.display = "Temporal orientation - current month [BIMS]"
* valueCodeableConcept = LNC#LA10010-9
* valueCodeableConcept.text = "Missed by 6 days to 1 month"
* valueCodeableConcept.coding.display = "Missed by 6 days to 1 month"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-Hospital-MOCA-1-Ob-Question-1
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-08T17:32:00-05:00"
* code = LNC#72172-0
//* code.text = "MoCA"
* code.coding.display = "Total score [MoCA]"
* valueQuantity = 18 UOM#{score}
* performer = Reference(Role-SLP-JennyGlass)
* extension[event-location].valueReference = Reference(Org-Loc-01)
* derivedFrom = Reference(QResponse-Hospital-MOCA-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-3
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#52731-7
* code.text = "Repetition of Three Words. Number of words repeated after first attempt"
* code.coding.display = "Repetition of three words # [BIMS]"
* valueCodeableConcept = LNC#LA6404-3
* valueCodeableConcept.text = "Two"
* valueCodeableConcept.coding.display = "Two"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)

Instance: CSC-SNF-BCAT-1-Ob-Question-30
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
//* code = LNC#TBD-LOINC2
//* code.coding.display = "BCAT Summary Score"
* code.text = "BCAT Summary Score"
* valueQuantity = 16 UOM#{score}
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BCAT-1)

Instance: CSC-SNF-BIMS-1-Ob-Question-10
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-07-11T11:30:00-05:00"
* code = LNC#54614-3
* code.text = "BIMS Summary Score			{score}"
* code.coding.display = "Brief Interview for Mental Status - summary score [BIMS]"
* valueQuantity = 9 UOM#{score}
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-BIMS-1)
