Profile:        NarrativeHistoryOfCognitiveStatus
Parent:         Observation
Id:             pacio-nhcs
Title:          "PACIO Narrative History of Cognitive Status"
Description:    "An exchange of summary observation regarding the most recent prior level of cognitive function immediately preceding the current admission, illness, or exacerbation for a patient. The use of this profile is encouraged in the absence of formal prior level of cognitive assessments. For formal assessments conducted with for example, an assessment instrument, use the Cognitive Status Collection and Cognitive Status profiles to capture assessment data."

* code from LNCVS
* code = LNC#11332-4 "History of Cognitive Function Narrative"
//* code.text = "History of Cognitive Function Narrative"

* value[x] 1..1
* value[x] only string
* value[x] ^short = "Unstructured summary of cognitive status observation for the patient. (Strongly encouraged until more structured method is established)"
* value[x] ^definition = "Unstructured summary of cognitive status observation for the patient. (Strongly encouraged until more structured method is established)"

* subject 1..1
* subject only Reference(USCorePatient)

* encounter only Reference(USCoreEncounter)

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.ordered = true
* category contains functioning 1..1
* category[functioning] from PACIOFunctioningCategoryVS (extensible)
* category[functioning].coding = PACIOFunctioningCategoryCS#functioning "Functioning"
// * category 1..*
// * category from PACIOFunctioningCategoryVS (extensible)
// * category = PACIOFunctioningCategoryCS#functioning

* performer 1..*
* performer only Reference(USCorePractitioner or USCorePractitionerRole or USCoreOrganization)
* performer ^short = "The person who performed the assessment. The preferred way to specify the performer is to use the PractitionerRole resource to provide both the practitioner and organization."

* effective[x] 1..1
* effective[x] only dateTime or Period

* extension contains ObservationEventLocation named event-location 0..1 MS
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
Description: "Associated with the Narrative History of Cognitive Status profile to provide a high-level indication of assistance required for the person’s baseline ability (cognitive function immediately preceding the current admission, illness, or exacerbation for a patient) to answer cognitive related clinical questions. The CMS Assessment answer list LL4309-2 provides possible values for this extension."
Id: assistance-required
* value[x] only CodeableConcept
* value[x] from LL4309-2 (extensible)