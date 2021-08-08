Alias:  DVT = https://www.hl7.org/fhir/valueset-device-nametype.html
Alias: ObservationLocation = http://hl7.org/fhir/StructureDefinition/event-location
//Alias: BodySite = http://hl7.org/fhir/StructureDefinition/bodySite


Profile:        UseOfDevice
Parent:         DeviceUseStatement
Id:             pacio-cs-dev
Title:          "Use of Device"
Description:    "A record of an assistive device--e.g. eyeglasses or hearing aid, being used by a patient during a cognitive status assessment. This profile based on the DeviceUseStatement resource provides a way to include information about device usage during an assessment."
* subject 1..1
* subject only Reference(USCorePatient)
* device ^short = "The description of the device that the patient used."
