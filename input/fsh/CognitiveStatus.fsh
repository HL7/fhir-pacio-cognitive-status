/**********
NOTE: Aliases are defined in GlobalAliasList.fsh
**********/
Profile:        CognitiveStatus
Parent:         Observation
Id:             pacio-cs
Title:          "PACIO Cognitive Status"
Description:    "An exchange of cognitive status observation for a patient. This profile is used for exchanging a single observation data generally included in a set of observation data collected through the use of a structured resource (e.g. assessment tool, instrument, or screen)."

* code from LNCVS (extensible)

* subject 1..1
* subject only Reference(USCorePatient)

* encounter only Reference(USCoreEncounter)

* performer 1..*
* performer only Reference(USCorePractitioner or USCorePractitionerRole or USCoreOrganization)

//* value[x] only CodeableConcept

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
//* category ^slicing.ordered = true
* category contains functioning 1..1
* category[functioning] from PACIOFunctioningCategoryVS (extensible)
* category[functioning].coding = PACIOFunctioningCategoryCS#functioning "Functioning"

// * category 1..* MS
// * category from PACIOFunctioningCategoryVS (extensible)
// * category = PACIOFunctioningCategoryCS#functioning

* effective[x] 1..1
* effective[x] only dateTime

* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom MS

* extension contains ObservationEventLocation named event-location 0..1 MS

* component.code from LNCVS (extensible)
* component.value[x] only CodeableConcept

* category ^short = "A second category code may be used along with the code “functioning”. For example, for assessment tool/survey instrument observations use “survey” as a second code."
* performer ^short = "The person who performed the assessment. The preferred way to specify the performer is to use the PractitionerRole resource to provide both the practitioner and organization."
* code ^short = "For a Post-Acute Care Assessment, should include a LOINC code and text for the question or concept name."
* subject ^short = "Should only reference a Patient resource."
* value[x] ^short = "Whenever possible should use the CodeableConcept datatype to provide a suitable code to define the concept for the observation data. As for values like an assessment score or roll-up value, the datatype for this element should be determined by Observation.code. However, for values that are ordinal, may use the CodeableConcept datatype along with the Ordinal Value Extension."
* component ^short = "If used, the answers for the associated questions (for the purpose of grouping answers under a heading and displaying side-by-side columns)"
* component.code ^short = "If used, the LOINC code or text of the column header (for the purpose of grouping answers under a heading and displaying side-by-side columns)."
* component.value[x] ^short = "The code and text for the answer to the (associated) question."
* basedOn ^short = "Currently not used in CognitiveStatus."
* partOf ^short = "Currently not used in CognitiveStatus."
* status ^short = "Should have the value 'final' when the observation is complete and there are no further actions needed. Otherwise, another value from the value set may appropriately be used."
* focus ^short = "Currently not used in CognitiveStatus."
* issued ^short = "Currently not used in CognitiveStatus."
* interpretation ^short = "Currently not used in CognitiveStatus."
* bodySite ^short = "Currently not used in CognitiveStatus."
* method ^short = "Currently not used in CognitiveStatus."
* specimen ^short = "Currently not used in CognitiveStatus."
* device ^short = "Currently not used in CognitiveStatus."
* referenceRange ^short = "Currently not used in CognitiveStatus."
* hasMember ^short = "Currently not used in CognitiveStatus."
* derivedFrom ^short = "Should point back to the QuestionnaireResponse that this resource is derived from."
* extension[event-location] ^short = "An extension to indicate where the observation event occurred."
* extension[event-location] ^definition = "The principal physical location where the observation event occurred."

