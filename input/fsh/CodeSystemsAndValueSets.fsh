CodeSystem: PACIOFunctioningCategoryCS
Title: "PACIO Functioning Category Code System"
Id: pacio-cat-cs
Description: "Defining a specific code for the classification of patient observation regarding individual's functioning."
* #functioning "Functioning" "Functioning is an umbrella term for body function, body structures, activities, and participation in societal roles. An individual’s functioning represents a dynamic interaction between their health condition, environmental factors, and personal factors. Taking a broad view of health that encompasses physical, mental, and social well-being, includes optimizing functioning as a component of optimizing their health. Characterizing an individual’s functioning includes both understanding the severity of an individual’s signs, symptoms, impairments and limitations, and how they correspond with day-to-day activities. Functioning also serves as a key health outcome within health care."

ValueSet: PACIOFunctioningCategoryVS
Title: "PACIO Functioning Category Value Set"
Description: "Codes for the classification of patient observation. This is an extension of the ObservationCategoryCodes value set"
Id: pacio-cat-vs
* include codes from valueset CATVS
* include codes from system PACIOFunctioningCategoryCS
