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
* subject only Reference(USCorePatient)

* encounter only Reference(USCoreEncounter)

* performer 1..*
* performer only Reference(USCorePractitioner or USCorePractitionerRole or USCoreOrganization)

//* value[x] only CodeableConcept or Quantity

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
//* category[1] ^slicing.discriminator.type = #value
//* category[1] ^slicing.discriminator.path = #system
// * category ^slicing.discriminator[1].type = #value
// * category ^slicing.discriminator[1].path = "coding"
* category ^slicing.rules = #open
* category ^slicing.ordered = true
// * category ^slicing.description = "Slice based on the category pattern"

* category contains functioning 1..1

* category[functioning] from PACIOFunctioningCategoryVS (extensible)
// first slice: must have fixed value 'functioning'
//* category[functioning] 1..*
* category[functioning].coding = PACIOFunctioningCategoryCS#functioning "Functioning"
// second slice: any code from the Observation Categaory Value Set
//* category[other] 0..1
//* category[other].coding from CATVS (extensible)





// * category.coding ^slicing.discriminator.type = #pattern
// * category.coding ^slicing.discriminator.path = "code"
// //* category[1] ^slicing.discriminator.type = #value
// //* category[1] ^slicing.discriminator.path = #system
// * category ^slicing.rules = #open
// * category ^slicing.ordered = true
// * category ^slicing.description = "Slice based on the category pattern"

// * category contains functioning 1..1 and other 0..1

// * category[functioning].coding from PACIOFunctioningCategoryVS (extensible)
// // first slice: must have fixed value 'functioning'
// //* category[functioning] 1..*
// * category[functioning].coding = PACIOFunctioningCategoryCS#functioning "Functioning"
// // second slice: any code from the Observation Categaory Value Set
// //* category[other] 0..1
// * category[other].coding from CATVS (extensible)

* effective[x] 1..1
* effective[x] only dateTime or Period

* hasMember only Reference(CognitiveStatus)
* hasMember MS

* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom MS

* effective[x] ^short = "Clinical relevant time for an assessment such as cognitive assessments performed with structured evaluation tools is the time the evaluation occurs, i.e., when the clinician obtains the answers entered in the tool. However, the only timing available may be when then tool is completed by the clinician. That timing is generally documented as a point in time (dateTime)."
* effective[x] ^definition = "Clinical relevant time for an assessment such as cognitive assessments performed with structured evaluation tools is the time the evaluation occurs, i.e., when the clinician obtains the answers entered in the tool. However, the only timing available may be when then tool is completed by the clinician. That timing is generally documented as a point in time (dateTime)."
* effective[x] ^comment = "The use of effective[x] and dateTime versus Period is subject to implementer workflow and needs.  In most situations, an observation is considered as a point in time, even if the assessment occurred over a period of time.  Period is included in this implementation guide to provide additional flexibility for specific use cases.  However, it is expected most observations will be recorded using DateTime.  Furthermore, any retrieval of information should return the relevant if DateTime is requested, even if the original observation was recorded as a period.  Some implementers may choose to use additional functions in there retrieves to 'normalize' intervals, as is done in Clinical Quality Language (CQL)."
* category ^short = "A second category code may be used along with the code “functioning”. For example, for assessment tool/survey instrument observations use “survey” as a second code."
* performer ^short = "The person who performed the assessment. The preferred way to specify the performer is to use the PractitionerRole resource to provide both the practitioner and organization."
* code ^short = "For a Post-Acute Care structured assessment resource such as an instrument or screen, use a LOINC code to identify the instrument/screen name or panel/section title to indicate the kind of assessment."
* subject ^short = "Should only reference a Patient resource."
* value[x] ^short = "If used, should use the CodeableConcept datatype whenever possible to provide a suitable code to define the concept for the observation data. When capturing a collection of related observations, typically this field is not used. If the outcome of an assessment includes one or more summary scores, leave this field unused and use the 'hasMember' field to point to one or more Observation resources with each of which has a score provided in the 'value' field."
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

* extension contains ObservationEventLocation named event-location 0..1 MS
* extension[event-location] ^short = "An extension to indicate where the observation event occurred."
* extension[event-location] ^definition = "The principal physical location where the observation event occurred."
* extension contains DevicePatientUsed named device-use 0..* MS
* extension[device-use] ^short = "An extension to indicate a record of assistive device usage by a patient during an assessment."

Extension: ObservationEventLocation
Parent: EventLocation
Description: "This extension is used to indicate the principal physical location where an observation event occurred."
Id: event-location
* value[x] only Reference(USCoreLocation)

Extension: DevicePatientUsed
Description: "Associated with the Cognitive Status Collection profile to point to a record indicating what healthcare-related assistive device was used by a patient during a functional status assessment. This extension leverages the DeviceUseStatement resource instead of Device resource so as to indicate appropriately a record of assistive device usage by a patient."
Id: device-patient-used
* value[x] only Reference(UseOfDevice)
* value[x] ^short = "Points to a record of a healthcare-related assistive device being used by a patient during an assessment."