/***********
Alias: LNC = http://loinc.org
Alias: UOM = http://unitsofmeasure.org
Alias: DAR = http://terminology.hl7.org/CodeSystem/data-absent-reason
**********/

Instance: CSC-SNF-CAM-Admission-1-Ob-Question-1
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-04-09T18:00:00-05:00"
* code = LNC#54632-5
* code.text = "Acute Onset Mental Status Change. Is there evidence of an acute change in mental status from the resident's baseline?"
* code.coding.display = "Acute onset mental status change [CAM.CMS]"
* category[1].coding = CAT#survey
* valueCodeableConcept = LNC#LA32-8
* valueCodeableConcept.text = "No"
* valueCodeableConcept.coding.display = "No"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-CAM-Admission-1)

Instance: CSC-SNF-CAM-Admission-1-Ob-Question-3
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-04-09T18:00:00-05:00"
* code = LNC#54628-3
* code.text = "Inattention - Did the resident have difficulty focusing attention, for example, being easily distractible or having difficulty keeping track of what was being said?"
* code.coding.display = "Inattention in last 7 days [CAM.CMS]"
* category[1].coding = CAT#survey
* valueCodeableConcept = LNC#LA61-7
* valueCodeableConcept.text = "Behavior not present"
* valueCodeableConcept.coding.display = "Behavior not present"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-CAM-Admission-1)

Instance: CSC-SNF-CAM-Admission-1-Ob-Question-5
InstanceOf: CognitiveStatus
Description: "An instance of CognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-04-09T18:00:00-05:00"
* code = LNC#54629-1
* code.text = "Disorganized Thinking - Was the resident's thinking disorganized or incoherent (rambling or irrelevant conversation, unclear or illogical flow of ideas, or unpredictable switching from subject to subject)?"
* code.coding.display = "Disorganized thinking in last 7 days [CAM.CMS]"
* category[1].coding = CAT#survey
* valueCodeableConcept = LNC#LA61-7
* valueCodeableConcept.text = "Behavior not present"
* valueCodeableConcept.coding.display = "Behavior not present"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* derivedFrom = Reference(QResponse-SNF-CAM-Admission-1)
