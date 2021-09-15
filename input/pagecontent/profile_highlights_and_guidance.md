This implementation guide provides a set of resource profiles to define how information should be packaged and retrieved in the exchange of PAC assessment data. In the following sections the highlights of the key fields of each profile are presented and guidance for building profile instances is provided.

A note on the use of "Must Support" in the Implementation Guide:
For profiles defined in other IGs, the meaning of "Must Support" is established in the defining IG. For profiles defined in this IG, [Must Support](http://hl7.org/fhir/us/core/general-guidance.html#must-support) will conform with US Core definition.

### Resource Profile: CognitiveStatusCollection

This resource profile is intended to be used for the data exchange of a point in time set of cognitive status observations collected through the use of a structured resource (e.g. assessment tool, instrument, or screen). It is derived from the FHIR Observation resource.

### Resource Profile: CognitiveStatus

This resource profile is intended to be used for the data exchange of a single cognitive status observation generally included in a set of observations collected through the use of a structured resource (e.g. assessment tool, instrument, or screen). It is derived from the FHIR Observation resource.
### Resource Profile: PriorLevelOfCognitiveFunction

This resource profile is intended to be used for the data exchange of a summary observation regarding the most recent prior level of cognitive function immediately preceding the current admission, illness, or exacerbation for a patient. The use of this profile is encouraged in the absence of formal prior level of cognitive assessments. For formal assessments conducted with for example, an assessment instrument, use the Cognitive Status Collection and Cognitive Status profiles to capture assessment data. It is derived from the FHIR Observation resource.

### Resource Profile: UseOfDevice

This resource profile is intended to be used for specifying a device used by a patient during a cognitive status assessment. It is derived from the FHIR resource DeviceUseStatement.


### Data Exchange Guidance and Examples

The PACIO data model as expressed in the resource profiles is designed to be flexible so as to facilitate the exchange of a variety of types of PAC assessment data. The key to effective data exchange and searching of assessment data is the use of content standards. Therefore, it is paramount that nationally accepted, standardized coding systems such as LOINC and SNOMED are used in specifying assessment data elements.

In the following set of examples, we provide guidance for using specific codes and conventions for constructing profile instances for data exchange. Although we reference a number of particular PAC patient/resident assessment instruments and provide examples to show how those particular types of assessment data can be exchanged, we do not endorse any of those assessment instruments over other assessment instruments that we have not mentioned. Our intention is to demonstrate the flexibility and adequacy of the PACIO data model, rather than to suggest the best types of cognitive assessment data for clinicians to use.

### SDC QuestionnaireResponse – CAM Example

![QResponse CAM Example](QResponse_CAM_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. The ‘questionnaire’ field is the URL pointing to the file of the questionnaire that defines and organizes the questions for which answers are being provided.
2. Each ‘linkId’ field should match the ‘linkId’ of the corresponding section title or question from the questionnaire.
3. The nesting structure of the ‘item’ fields should correspond to the nesting structure as showed in the questionnaire.

### CognitiveStatusCollection – CAM Example

![BCS CAM Example](BCS_CAM_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Here is how the ‘event-location’ extension is used to point to a FHIR Location resource to indicate where the observation event occurred.
2. Use the right LOINC code to indicate the particular kind of cognitive assessment. In this case the LOINC code ‘86585-7’ is used to indicate ‘Signs and Symptoms of Delirium (from CAM©)’.
3. The ‘category’ field should contain the value ‘survey’ for a PAC assessment.

### CognitiveStatusCollection – BIMS Example

![BCS BIMS Example](BCS_BIMS_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Use the right LOINC code to indicate the particular kind of cognitive assessment. In this case the LOINC code ‘52491-8’ is used to indicate ‘Brief Interview for Mental Status (BIMS)’.
2. Use multiple ‘performer’ fields to provide references to FHIR Practitioner, PractitionerRole, and Organization resource instances.

### CognitiveStatusCollection – MoCA Example

![BCS MOCA Example](BCS_MOCA_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Use the right LOINC code to indicate the particular kind of cognitive assessment. In this case the LOINC code ‘52491-8’ is used to indicate ‘Montreal Cognitive Assessment [MoCA]’.
2. Use the ‘value’ field of type CodeableConcept to store the total score of the MoCA assessment.

### CognitiveStatusCollection – PHQ-9 Two-Column Example

![BCS PHQ9 Example](BCS_PHQ9_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Use the right LOINC code to indicate the particular kind of cognitive assessment. In this case the LOINC code ‘54635-8’ is used to indicate ‘Resident Mood Interview (PHQ-9)’.
2. An assessment with more than one observation questions would have a number of ‘hasMember’ elements, each of which would point to an observation in the assessment.
3. The observation questions of the PHQ-9 assessment are grouped under two headings. One way to determine which ‘hasMember’ elements (i.e. observation questions) should be grouped together and under which heading is to examine the CognitionQuestionnaireResponse resource, which has the nesting structure to show how the questions were organized.

### PriorLevelOfCognitiveFunction – Prior Level of Cognitive Function Example

![PLOCF Example](PLOCF_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Use the extension to provide indication of 'independent' vs. 'assistance needed'.
2. Text summary of the prior level of cognitive function for the patient.
