/**********
NOTE: Aliases are defined in GlobalAliasList.fsh
**********/

Instance: BSJ-Narrative-History-Cognitive-Status-1
InstanceOf: NarrativeHistoryOfCognitiveStatus
Description: "An instance of NarrativeHistoryOfCognitiveStatus"
* subject = Reference(patientBSJ1)
* status = #final
//* code = LNC#11332-4 "History of Cognitive Function Narrative"
* extension[event-location].valueReference = Reference(provider-org-loc-01)
* extension[assistance-required].valueCodeableConcept = LNC#LA11539-6
* extension[assistance-required].valueCodeableConcept.coding.display = "Independent - Patient completed the activities by him/herself, with or without an assistive device, with no assistance from a helper."
* valueString = "Alert and oriented x 3. She is independent in household finances, social and community activities, coeherent and appropriate communication. Appropriate attire for location and weather."
* performer = Reference(provider-role-pcp)
* effectivePeriod.start = "2019-07-01"
* effectivePeriod.end = "2020-11-30"
