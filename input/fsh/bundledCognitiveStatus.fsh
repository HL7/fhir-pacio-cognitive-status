/**********
NOTE: Aliases are defined in GlobalAliasList.fsh
**********/
Profile:        CognitiveStatusCollection
Parent:         Observation
Id:             pacio-csc
Title:          "PACIO Cognitive Status Collection"
Description:    "A point in time collection of cognitive status observations for a patient. This profile is used for exchanging a set of observation data collected through the use of a structured resource (e.g. assessment tool, instrument, or screen)."

* code from LNCVS (extensible)

* subject 1..1
* subject only Reference(Patient)

* performer 1..*

//* value[x] only CodeableConcept or Quantity

* category 1..*
* category from PACIOFunctioningCategoryVS (extensible)
* category = PACIOFunctioningCategoryCS#functioning

* effective[x] 1..1
* effective[x] only dateTime or Period

* hasMember MS
* derivedFrom MS

* category ^short = "A second category code may be used along with the code “functioning”. For example, for assessment tool/survey instrument observations use “survey” as a second code."
* performer ^short = "The person who performed the assessment. The preferred way to specify the performer is to use the PractitionerRole resource to provide both the practitioner and organization."
* code ^short = "For a Post-Acute Care structured assessment resource such as an instrument or screen, use a LOINC code to identify the instrument/screen name or panel/section title to indicate the kind of assessment."
* subject ^short = "Should only reference a Patient resource."
* value[x] ^short = "If used, should use the CodeableConcept type whenever possible to provide a suitable code to define the concept. When capturing a collection of related observations, typically this field is not used. As for values like an assessment score or roll-up value, the preferred way is to leave this field unused and use the 'hasMember' field to reference a cognitive status observation specifying the score or roll-up value in the value field using the Quantity type."
* component ^short = "Currently not used in CognitiveStatusCollection."
* basedOn ^short = "Currently not used in CognitiveStatusCollection."
* partOf ^short = "Currently not used in CognitiveStatusCollection."
* status ^short = "Should have the value 'final' when all the observatons are complete and there are no further actions needed. Otherwise, another value from the value set may appropriately be used."
* focus ^short = "Currently not used in CognitiveStatusCollection."
* issued ^short = "Currently not used in CognitiveStatusCollection."
* dataAbsentReason ^short = "Currently not used in CognitiveStatusCollection."
* interpretation ^short = "Currently not used in CognitiveStatusCollection."
* bodySite ^short = "Currently not used in CognitiveStatusCollection."
* method ^short = "Currently not used in CognitiveStatusCollection."
* specimen ^short = "Currently not used in CognitiveStatusCollection."
* device ^short = "Currently not used in CognitiveStatusCollection."
* referenceRange ^short = "Currently not used in CognitiveStatusCollection."
* hasMember ^short = "Each cognitive status observation in the collection."
* derivedFrom ^short = "Should point back to the QuestionnaireResponse that this resource is derived from."

* extension contains ObservationLocation named event-location 0..1 MS
* extension[event-location] ^short = "An extension to indicate where the observation event occurred."
* extension[event-location] ^definition = "The principal physical location where the observation event occurred."
* extension contains DevicePatientUsed named device-use 0..* MS
* extension[device-use] ^short = "An extension to indicate a record of assistive device usage by a patient during an assessment."

Extension: DevicePatientUsed
Description: "Associated with the Cognitive Status Collection profile to point to a record indicating what healthcare-related assistive device was used by a patient during a functional status assessment. This extension leverages the DeviceUseStatement resource instead of Device resource so as to indicate appropriately a record of assistive device usage by a patient."
Id: device-patient-used
* value[x] only Reference(UseOfDevice)
* value[x] ^short = "Points to a record of a healthcare-related assistive device being used by a patient during an assessment."