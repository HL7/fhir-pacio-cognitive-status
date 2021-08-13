/**********
NOTE: Aliases are defined in GlobalAliasList.fsh
**********/

Profile:        CognitionQuestionnaireResponse
Parent:         QuestionnaireResponse
Id:             pacio-cognition-qr
Title:          "PACIO Cognition Questionnaire Response"
Description:    "A completed, or sections of a completed, CMS PAC assessment."

* subject 1..1
* subject only Reference(USCorePatient)

* questionnaire ^short = "This field contains the URI for the PAC assessment questionnaire."

* item.linkId ^short = "This field contains the 'linkId' of the corresponding section title or question from the questionnaire."
* item.id ^short = "This field contains the LOINC code of the section title or observation question."

* item.answer.value[x] only Reference(Observation)
