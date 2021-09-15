Alias: DVT = https://www.hl7.org/fhir/valueset-device-nametype.html
Alias: SCT = http://snomed.info/sct

Instance: CMS-Device-1
InstanceOf: Device
* deviceName.name = "Eyeglasses"
* deviceName.type = DVT#user-friendly-name
* type = SCT#50121007

Instance: CMS-Device-2
InstanceOf: Device
* deviceName.name = "Hearing aid"
* deviceName.type = DVT#user-friendly-name
* type = SCT#6012004
