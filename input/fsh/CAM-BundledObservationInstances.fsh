/*************
Alias:  LNC = http://loinc.org
Alias:  CAT = http://terminology.hl7.org/CodeSystem/observation-category
Alias:  DAR = http://terminology.hl7.org/CodeSystem/data-absent-reason
*************/

Instance: CSC-SNF-CAM-Admission-1
InstanceOf: CognitiveStatusCollection
Description: "An instance of CognitiveStatusCollection"
* subject = Reference(patientBSJ1)
* status = #final
* effectiveDateTime = "2020-04-09T18:00:00-05:00"
* code = LNC#86585-7
* code.coding.display = "MDS v3.0 - RAI v1.17.2 - Signs and symptoms of delirium (from CAM) [CMS Assessment]"
//* category[functioning].coding = PACIOFunctioningCategoryCS#functioning "Functioning"
* category[1].coding = CAT#survey "Survey"
* performer = Reference(Role-SLP-HoneyJones)
* extension[event-location].valueReference = Reference(Org-Loc-02)
* hasMember[0] = Reference(CSC-SNF-CAM-Admission-1-Ob-Question-1)
* hasMember[1] = Reference(CSC-SNF-CAM-Admission-1-Ob-Question-3)
* hasMember[2] = Reference(CSC-SNF-CAM-Admission-1-Ob-Question-5)
* derivedFrom = Reference(QResponse-SNF-CAM-Admission-1)
//* derivedFrom.display = "Questionnaire Response"
