//Alias: MDS3.0-NC-1.17 = https://api.logicahealth.org/PACIO/open/Questionnaire/MDS3.0-NC-1.17
Alias: SDCQR = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Alias: LNC = http://loinc.org

Instance: QResponse-SNF-BIMS-1
InstanceOf: QuestionnaireResponse
Description: "An instance of QuestionnaireResponse"
* subject = Reference(patientBSJ1)
* status = #completed
* questionnaire = MDS3.0-NC-1.17
* authored = "2020-07-11T11:30:00-05:00"
* author = Reference(Role-SLP-HoneyJones)
* item[0].linkId = "Section-3"
* item[0].text =  "MDS v3.0 - RAI v1.17.2 - Cognitive patterns [CMS Assessment]"
* item[0].item[0].linkId = "Section-3/C0200-C0500"
* item[0].item[0].text =  "Brief interview for mental status [BIMS]"
* item[0].item[0].item[0].linkId = "Section-3/C0200"
* item[0].item[0].item[0].text =  "Repetition of Three Words. Number of words repeated after first attempt"
* item[0].item[0].item[0].answer.valueCoding = LNC#LA6404-3 "Two"
* item[0].item[0].item[1].linkId = "Section-3/C0300"
* item[0].item[0].item[1].text =  "Temporal orientation (orientation to year, month, and day) [BIMS]"
* item[0].item[0].item[1].item[0].linkId = "Section-3/C0300A"
* item[0].item[0].item[1].item[0].text =  "Able to report correct year"
* item[0].item[0].item[1].item[0].answer.valueCoding = LNC#LA10008-3 "Missed by 1 year"
* item[0].item[0].item[1].item[1].linkId = "Section-3/C0300B"
* item[0].item[0].item[1].item[1].text =  "Able to report correct month"
* item[0].item[0].item[1].item[1].answer.valueCoding = LNC#LA10010-9 "Missed by 6 days to 1 month"
* item[0].item[0].item[1].item[2].linkId = "Section-3/C0300C"
* item[0].item[0].item[1].item[2].text =  "Able to report correct day of the week"
* item[0].item[0].item[1].item[2].answer.valueCoding = LNC#LA9960-1 "Correct"
* item[0].item[0].item[2].linkId = "Section-3/C0400"
* item[0].item[0].item[2].text =  "Recall [BIMS]"
* item[0].item[0].item[2].item[0].linkId = "Section-3/C0400A"
* item[0].item[0].item[2].item[0].text =  "Able to recall \"sock\""
* item[0].item[0].item[2].item[0].answer.valueCoding = LNC#LA10126-3 "Yes, after cueing (\"something to wear\")"
* item[0].item[0].item[2].item[1].linkId = "Section-3/C0400B"
* item[0].item[0].item[2].item[1].text =  "Able to recall \"blue\""
* item[0].item[0].item[2].item[1].answer.valueCoding = LNC#LA10978-7 "Yes, after cueing (\"a color\")"
* item[0].item[0].item[2].item[2].linkId = "Section-3/C0400C"
* item[0].item[0].item[2].item[2].text =  "Able to recall \"bed\""
* item[0].item[0].item[2].item[2].answer.valueCoding = LNC#LA10125-5 "Yes, after cueing (\"a piece of furniture\")"
* item[0].item[0].item[3].linkId = "Section-3/C0500"
* item[0].item[0].item[3].text =  "BIMS Summary Score"
* item[0].item[0].item[3].answer.valueQuantity = 9 UOM#{score}

// Instance: QResponse-SNF-BCAT-1
// InstanceOf: QuestionnaireResponse
// Description: "An instance of QuestionnaireResponse"
// * subject = Reference(patientBSJ1)
// * status = #completed
// * questionnaire = MDS3.0-NC-1.17
// * authored = "2020-07-11T11:30:00-05:00"
// * author = Reference(Role-SLP-HoneyJones)
// * item[0].linkId = "BCAT"
// * item[0].text =  "Brief Cognitive Assessment Tool [BCAT]"
// * item[0].item[0].linkId = "BCAT/SummaryScore"
// * item[0].item[0].text =  "BCAT Summary Score"
// * item[0].item[0].answer.valueQuantity = 16 UOM#{score}

// Instance: QResponse-Hospital-MOCA-2
// InstanceOf: QuestionnaireResponse
// Description: "An instance of QuestionnaireResponse"
// * subject = Reference(patientBSJ1)
// * status = #completed
// * questionnaire = MDS3.0-NC-1.17
// * authored = "2020-07-10T12:16:00-05:00"
// * author = Reference(Role-SLP-JennyGlass)
// * item[0].linkId = "MoCA"
// * item[0].text =  "Montreal Cognitive Assessment [MoCA]"
// * item[0].item[0].linkId = "MoCA/TotalScore"
// * item[0].item[0].text =  "Total score [MoCA]"
// * item[0].item[0].answer.valueQuantity = 22 UOM#{score}

Instance: QResponse-SNF-PHQ9-1
InstanceOf: QuestionnaireResponse
Description: "An instance of QuestionnaireResponse"
* subject = Reference(patientBSJ1)
* status = #completed
* questionnaire = MDS3.0-NC-1.17
* authored = "2020-07-11T11:30:00-05:00"
* author = Reference(Role-SLP-LunaBaskins)
* item[0].linkId = "Section-4"
* item[0].text =  "MDS v3.0 - RAI v1.18.1 - Mood - OSA [CMS Assessment]"
* item[0].item[0].linkId = "Section-4/D0200"
* item[0].item[0].text =  "Resident mood interview (PHQ-9) [Reported PHQ-9 CMS]"
* item[0].item[0].item[0].linkId = "Section-4/D0200_1"
* item[0].item[0].item[0].text =  "Resident mood interview (PHQ-9) - symptom presence in the last 2 weeks [CMS Assessment]"
* item[0].item[0].item[0].item[0].linkId = "Section-4/D0200A1"
* item[0].item[0].item[0].item[0].text =  "Little interest or pleasure in doing things"
* item[0].item[0].item[0].item[0].answer.valueCoding = LNC#LA33-6 "Yes"
* item[0].item[0].item[0].item[1].linkId = "Section-4/D0200B1"
* item[0].item[0].item[0].item[1].text =  "Feeling down"
* item[0].item[0].item[0].item[1].answer.valueCoding = LNC#LA33-6 "Yes"
* item[0].item[0].item[0].item[2].linkId = "Section-4/D0200C1"
* item[0].item[0].item[0].item[2].text =  "Trouble falling or staying asleep"
* item[0].item[0].item[0].item[2].answer.valueCoding = LNC#LA33-6 "Yes"
* item[0].item[0].item[0].item[3].linkId = "Section-4/D0200D1"
* item[0].item[0].item[0].item[3].text =  "Feeling tired or having little energy"
* item[0].item[0].item[0].item[3].answer.valueCoding = LNC#LA32-8 "No"
* item[0].item[0].item[0].item[4].linkId = "Section-4/D0200E1"
* item[0].item[0].item[0].item[4].text =  "Poor appetite or overeating"
* item[0].item[0].item[0].item[4].answer.valueCoding = LNC#LA32-8 "No"
* item[0].item[0].item[0].item[5].linkId = "Section-4/D0200F1"
* item[0].item[0].item[0].item[5].text =  "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* item[0].item[0].item[0].item[5].answer.valueCoding = LNC#LA32-8 "No"
* item[0].item[0].item[0].item[6].linkId = "Section-4/D0200G1"
* item[0].item[0].item[0].item[6].text =  "Trouble concentrating on things"
* item[0].item[0].item[0].item[6].answer.valueCoding = LNC#LA32-8 "No"
* item[0].item[0].item[0].item[7].linkId = "Section-4/D0200H1"
* item[0].item[0].item[0].item[7].text =  "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual"
* item[0].item[0].item[0].item[7].answer.valueCoding = LNC#LA32-8 "No"
* item[0].item[0].item[0].item[8].linkId = "Section-4/D0200I1"
* item[0].item[0].item[0].item[8].text =  "Thoughts that you would be better off dead"
* item[0].item[0].item[0].item[8].answer.valueCoding = LNC#LA10996-9 "No response"
* item[0].item[0].item[1].linkId = "Section-4/D0200_2"
* item[0].item[0].item[1].text =  "Resident mood interview (PHQ-9) - symptom frequency in the last 2 weeks [CMS Assessment]"
* item[0].item[0].item[1].item[0].linkId = "Section-4/D0200A2"
* item[0].item[0].item[1].item[0].text =  "Little interest or pleasure in doing things"
* item[0].item[0].item[1].item[0].answer.valueCoding = LNC#LA10998-5 "2-6 days (several days)"
* item[0].item[0].item[1].item[1].linkId = "Section-4/D0200B2"
* item[0].item[0].item[1].item[1].text =  "Feeling down"
* item[0].item[0].item[1].item[1].answer.valueCoding = LNC#LA10998-5 "2-6 days (several days)"
* item[0].item[0].item[1].item[2].linkId = "Section-4/D0200C2"
* item[0].item[0].item[1].item[2].text =  "Trouble falling or staying asleep"
* item[0].item[0].item[1].item[2].answer.valueCoding = LNC#LA10998-5 "2-6 days (several days)"
* item[0].item[0].item[1].item[3].linkId = "Section-4/D0200D2"
* item[0].item[0].item[1].item[3].text =  "Feeling tired or having little energy"
* item[0].item[0].item[1].item[3].answer.valueCoding = LNC#LA10997-7 "Never or 1 day"
* item[0].item[0].item[1].item[4].linkId = "Section-4/D0200E2"
* item[0].item[0].item[1].item[4].text =  "Poor appetite or overeating"
* item[0].item[0].item[1].item[4].answer.valueCoding = LNC#LA10997-7 "Never or 1 day"
* item[0].item[0].item[1].item[5].linkId = "Section-4/D0200F2"
* item[0].item[0].item[1].item[5].text =  "Feeling bad about yourself - or that you are a failure or have let yourself or your family down"
* item[0].item[0].item[1].item[5].answer.valueCoding = LNC#LA10997-7 "Never or 1 day"
* item[0].item[0].item[1].item[6].linkId = "Section-4/D0200G2"
* item[0].item[0].item[1].item[6].text =  "Trouble concentrating on things"
* item[0].item[0].item[1].item[6].answer.valueCoding = LNC#LA10997-7 "Never or 1 day"
* item[0].item[0].item[1].item[7].linkId = "Section-4/D0200H2"
* item[0].item[0].item[1].item[7].text =  "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual"
* item[0].item[0].item[1].item[7].answer.valueCoding = LNC#LA10997-7 "Never or 1 day"
* item[0].item[0].item[1].item[8].linkId = "Section-4/D0200I2"
* item[0].item[0].item[1].item[8].text =  "Thoughts that you would be better off dead"
* item[0].item[1].linkId = "Section-4/D0300"
* item[0].item[1].text =  "PHQ-9 Total Score"
* item[0].item[1].answer.valueQuantity = 3 UOM#{score}

Instance: QResponse-Hospital-MOCA-1
InstanceOf: QuestionnaireResponse
Description: "An instance of QuestionnaireResponse"
* subject = Reference(patientBSJ1)
* status = #completed
* questionnaire = MDS3.0-NC-1.17
* authored = "2020-07-08T17:32:00-05:00"
* author = Reference(Role-SLP-JennyGlass)
* item[0].linkId = "MoCA"
* item[0].text =  "Montreal Cognitive Assessment [MoCA]"
* item[0].item[0].linkId = "MoCA/TotalScore"
* item[0].item[0].text =  "Total score [MoCA]"
* item[0].item[0].answer.valueQuantity = 18 UOM#{score}

Instance: QResponse-Hospital-MMSE-1
InstanceOf: QuestionnaireResponse
Description: "An instance of QuestionnaireResponse"
* subject = Reference(patientBSJ1)
* status = #completed
* questionnaire = MDS3.0-NC-1.17
* authored = "2020-07-08T17:32:00-05:00"
* author = Reference(Role-SLP-JennyGlass)
* item[0].linkId = "MMSE"
* item[0].text =  "Mini-Mental State Examination [MMSE]"
* item[0].item[0].linkId = "MMSE/ToTalScore"
* item[0].item[0].text =  "MMSE Total Score"
* item[0].item[0].answer.valueQuantity = 20 UOM#{score}

// Instance: QResponse-Hospital-MMSE-2
// InstanceOf: QuestionnaireResponse
// Description: "An instance of QuestionnaireResponse"
// * subject = Reference(patientBSJ1)
// * status = #completed
// * questionnaire = MDS3.0-NC-1.17
// * authored = "2020-07-10T12:16:00-05:00"
// * author = Reference(Role-SLP-JennyGlass)
// * item[0].linkId = "MMSE"
// * item[0].text =  "Mini-Mental State Examination [MMSE]"
// * item[0].item[0].linkId = "MMSE/ToTalScore"
// * item[0].item[0].text =  "MMSE Total Score"
// * item[0].item[0].answer.valueQuantity = 24 UOM#{score}
