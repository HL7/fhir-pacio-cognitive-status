// Patient instance
Instance: patientBSJ1
Description: "An instance of Patient"
InstanceOf: Patient
* name.given = "Betsy"
* name.family = "Smith-Johnson"
* name.text = "Betsy Smith-Johnson"

// PractitionerRole instances
Instance: Role-SLP-HoneyJones
InstanceOf: PractitionerRole
Description: "An instance of PractitionerRole"
* code = SCT#159026005
* code.coding.display = "Speech and language therapist"
* active = true
* practitioner = Reference(Practitioner-HoneyJones)
* organization = Reference(Org-02)
* location = Reference(Org-Loc-02)

Instance: Role-SLP-JennyGlass
InstanceOf: PractitionerRole
Description: "An instance of PractitionerRole"
* code = SCT#159026005
* code.coding.display = "Speech and language therapist"
* active = true
* practitioner = Reference(Practitioner-JennyGlass)
* organization = Reference(Org-01)
* location = Reference(Org-Loc-01)

Instance: Role-SLP-LunaBaskins
InstanceOf: PractitionerRole
Description: "An instance of PractitionerRole"
* code = SCT#159026005
* code.coding.display = "Speech and language therapist"
* active = true
* practitioner = Reference(Practitioner-LunaBaskins)
* organization = Reference(Org-03)
* location = Reference(Org-Loc-03)


// Practitioner instances
Instance: Practitioner-LunaBaskins
InstanceOf: Practitioner
Description: "An instance of Practitioner"
* name.given = "Luna"
* name.family = "Baskins"
* name.text = "Luna Baskins"
* active = true
* gender = #female

Instance: Practitioner-JennyGlass
InstanceOf: Practitioner
Description: "An instance of Practitioner"
* name.given = "Jenny"
* name.family = "Glass"
* name.text = "Jenny Glass"
* active = true
* gender = #female

Instance: Practitioner-HoneyJones
InstanceOf: Practitioner
Description: "An instance of Practitioner"
* name.given = "Honey"
* name.family = "Jones"
* name.text = "Honey Jones"
* active = true
* gender = #female

// Organization instances
Instance: Org-01
InstanceOf: Organization
Description: "An instance of Organization"
* name = "San Antonio General Hospital"

Instance: Org-02
InstanceOf: Organization
Description: "An instance of Organization"
* name = "Happy Nursing Facility"

Instance: Org-03
InstanceOf: Organization
Description: "An instance of Organization"
* name = "Sky Harbor Home Health Services"

// Location instances
Instance: Org-Loc-01
InstanceOf: Location
Description: "An instance of Location"
* status = #active
* name = "San Antonio General Hospital"
* address.text = "26022 Meadowlark Bay, San Antonio, TX 78260"

Instance: Org-Loc-02
InstanceOf: Location
Description: "An instance of Location"
* status = #active
* name = "Happy Nursing Facility"
* address.text  = "8100 Pinebrook Dr, San Antonio, TX, 78230"

Instance: Org-Loc-03
InstanceOf: Location
Description: "An instance of Location"
* status = #active
* name = "Sky Harbor Home Health Services"
* address.text  = "8810 Old Sky Harbor, San Antonio, TX 78242"


//////////////////////////////////////////////////////////

Instance: provider-role-pcp
InstanceOf: PractitionerRole
Description: "An instance of PractitionerRole"
* code = NUCC#261QP2300X
* code.coding.display = "Primary Care Clinic/Center"
//* specialty = NUCC#363LP2300X
//* specialty.coding.display = "Primary Care Clinic/Center"
* active = true
* practitioner = Reference(Practitioner-JohnSmith)
//* practitioner.display = "John Smith"
* organization = Reference(provider-org-01)
* location = Reference(provider-org-loc-01)

Instance: provider-role-neurologist
InstanceOf: PractitionerRole
Description: "An instance of PractitionerRole"
* code = NUCC#2084N0400X
* code.coding.display = "Neurology"
//* specialty = NUCC#2084N0400X
//* specialty.coding.display = "Neurology"
* active = true
* practitioner = Reference(Practitioner-NoraOlogist)
* organization = Reference(provider-org-16)
* location = Reference(provider-org-loc-16)

Instance: Practitioner-JohnSmith
InstanceOf: Practitioner
Description: "An instance of Practitioner"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "4278275001"
* name.given = "John"
* name.family = "Smith"
* name.text = "John Smith"
* active = true
* gender = #male

Instance: Practitioner-NoraOlogist
InstanceOf: Practitioner
Description: "An instance of Practitioner"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "3668788925"
* name.given = "Nora"
* name.family = "Ologist"
* name.text = "Nora Ologist"
* active = true
* gender = #female

Instance: provider-org-01
InstanceOf: Organization
Description: "An instance of Organization"
* name = "Primary Care INC."

Instance: provider-org-loc-01
InstanceOf: Location
Description: "An instance of Location"
* status = #active
* name = "Primary Care INC."
* address.text = "177 Deerfield St. San Antonio, TX 78207"

Instance: provider-org-16
InstanceOf: Organization
Description: "An instance of Organization"
* name = "Neuro Care INC."

Instance: provider-org-loc-16
InstanceOf: Location
Description: "An instance of Location"
* status = #active
* name = "Neuro Care INC."
* address.text = "26022 Meadowlark Bay, San Antonio, TX 78260"
