Profile:        PriorLevelOfCognitiveFunction
Parent:         Observation
Id:             pacio-plcf
Title:          "PACIO Prior Level of Cognitive Function"
Description:    "An exchange of summary observation regarding the most recent prior level of cognitive function immediately preceding the current admission, illness, or exacerbation for a patient. The use of this profile is encouraged in the absence of formal prior level of cognitive assessments. For formal assessments conducted with for example, an assessment instructment, use the Cognitive Status Collecction and Cognitive Status profiles to capture assessment data."

* code from LNCVS
* code = LNC#11332-4 "History of Cognitive Function Narrative"
//* code.text = "History of Cognitive Function Narrative"

* category 1..*
* category from PACIOFunctioningCategoryVS (extensible)
* category = PACIOFunctioningCategoryCS#functioning

* value[x] 1..1
* value[x] only string
* value[x] ^short = "Text summary of the prior level of cognitive function for the patient."
* value[x] ^binding.description = "Text summary of the prior level of cognitive function for the patient. (Strongly encouraged until more structured method is established)"

* subject 1..1
* subject only Reference(USCorePatient)

* performer 1..*
* performer ^short = "The person who performed the assessment. The preferred way to specify the performer is to use the PractitionerRole resource to provide both the practitioner and organization."

* effective[x] 1..1
* effective[x] only dateTime or Period

* extension contains ObservationLocation named event-location 0..1 MS
* extension contains AssistanceRequired named assistance-required 0..1 MS

//* category ^short = "A second category code may be used along with the code “functioning”. For example, for assessment tool/survey instrument observations use “survey” as a second code."
* component ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* basedOn ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* partOf ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* status ^short = "Should have the value 'final' when the observation is complete and there are no further actions needed. Otherwise, another value from the value set may appropriately be used."
* focus ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* issued ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* interpretation ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* bodySite ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* method ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* specimen ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* device ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* referenceRange ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* hasMember ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* derivedFrom ^short = "Currently not used in PriorLevelOfCognitiveFunction."
* extension[event-location] ^short = "An extension to indicate where the observation event occurred."
* extension[event-location] ^definition = "The principal physical location where the observation event occurred."
* extension[assistance-required] ^short = "An extension to indicate the level of assistance required for a patient during an assessment."

Extension: AssistanceRequired
Description: "Associated with prior level of cognitive function to provide a high-level indication of assistance required for the person’s baseline ability (cognitive function immediately preceding the current admission, illness, or exacerbation for a patient) to answer cognitive related clinical questions. The CMS Assessment answer list LL4309-2 provides possible values for this extension."
Id: assistance-required
* value[x] only CodeableConcept
* value[x] from LL4309-2 (extensible)