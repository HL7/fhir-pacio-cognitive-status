This implementation guide provides a set of resource profiles to define how information should be packaged and retrieved in the exchange of PAC assessment data. In the following sections the highlights of the key fields of each profile are presented and guidance for building profile instances is provided.

A note on the use of "Must Support" in the Implementation Guide:
For profiles defined in other IGs, the meaning of "Must Support" is established in the defining IG. For profiles defined in this IG, [Must Support](http://hl7.org/fhir/us/core/general-guidance.html#must-support) will conform with US Core definition.

### Resource Profile: CognitionQuestionnaireResponse

This resource profile is intended to be used for data exchange of a completed, or sections of a completed, post-acute care (PAC) assessment. The CognitionQuestionnaireResponse resource also preserves the structure of the PAC assessment questionnaire to provide context for the PACIO observation-based information and is derived from the FHIR resource QuestionnaireResponse.

<table class="grid">
  <thead>
    <tr>
      <th>Key Fields to Highlight</th>
      <th>Description & Constraints</th>
    </tr>
  </thead>
  <tr>
    <td>questionnaire</td>
    <td>A URL pointing to the file of the Questionnaire that defines and organizes the questions for which answers are being provided.</td>
  </tr>
  <tr>
    <td>subject</td>
    <td>A required field constrained to Reference(Patient)—since the focus is on data exchange with patient assessment data.</td>
  </tr>
  <tr>
    <td>item.id</td>
    <td>This field is chosen to contain the code of a section title or an observation question. For example, the LOINC code ‘83218-8.’</td>
  </tr>
  <tr>
    <td>item.linkId</td>
    <td>This field should contain the ‘linkId’ of the corresponding section title or question from the Questionnaire.</td>
  </tr>
  <tr>
    <td>answer.value</td>
    <td>This field is constrained to Reference(Observation).</td>
  </tr>
  <tr>
    <td>Item[*].item</td>
    <td>The nested questionnaire response items should show the same nesting structure as presented in the Questionnaire.</td>
  </tr>
</table>

### Resource Profile: CognitiveStatusCollection

This resource profile is intended to be used for data exchange of a point in time bundle of cognitive status observations from a single post-acute care (PAC) assessment. It is derived from the FHIR resource Observation.

<table class="grid">
  <thead>
    <tr>
      <th>Key Fields to Highlight</th>
      <th>Description & Constraints</th>
    </tr>
  </thead>
  <tr>
    <td>event-location</td>
    <td>A “must support” extension added to the Observation resource for storing the Reference(Location) to indicate where the observation event occurred.</td>
  </tr>
  <tr>
    <td>device-patient-used</td>
    <td>A “must support” extension added to the Observation resource for storing the Reference(UseOfDevice) to specify one or more devices used by a patient during a cognitive status assessment.</td>
  </tr>
  <tr>
    <td>status</td>
    <td>A required field with 'required' binding to the value set ObservationStatus (http://hl7.org/fhir/R4/valueset-observation-status.html). This field should contain the value 'final' when all the observations are complete and there are no further actions needed. Otherwise, another value from the value set may appropriately be used.</td>
  </tr>
  <tr>
    <td>category</td>
    <td>A required field with 'extensible' binding to the code system https://terminology.hl7.org/1.0.0/ValueSet-observation-category.html. This field should contain the value 'survey' for PAC assessment.</td>
  </tr>
  <tr>
    <td>code</td>
    <td>A required field with ‘extensible’ binding to the LOINC code system http://loinc.org/.</td>
  </tr>
  <tr>
    <td>subject</td>
    <td>A required field constrained to Reference(Patient)—since the focus is on data exchange with patient assessment data.</td>
  </tr>
  <tr>
    <td>effective</td>
    <td>This field, limited to the type dateTime or Period only, indicates the time/time period for the assessment.</td>
  </tr>
  <tr>
    <td>performer</td>
    <td>At least one 'performer' is required to be present to indicate who is responsible for the observation.</td>
  </tr>
  <tr>
    <td>hasMember</td>
    <td>This field points to the individual observation instances included in the assessment.</td>
  </tr>
  <tr>
    <td>derivedFrom</td>
    <td>This field points to a CognitionQuestionnaireResponse instance.</td>
  </tr>
</table>

### Resource Profile: CognitiveStatus

This resource profile is intended to be used for data exchange of a single cognitive status observation included in a post-acute care (PAC) assessment. It is derived from the FHIR resource Observation.

<table class="grid">
  <thead>
    <tr>
      <th>Key Fields to Highlight</th>
      <th>Description & Constraints</th>
    </tr>
  </thead>
  <tr>
    <td>event-location</td>
    <td>A “must support” extension added to the Observation resource for storing the Reference(Location) to indicate where the observation event occurred.</td>
  </tr>
  <tr>
    <td>status</td>
    <td>A required field with 'required' binding to the value set ObservationStatus (http://hl7.org/fhir/R4/valueset-observation-status.html). This field should contain the value 'final' when the observation is complete and there are no further actions needed. Otherwise, another value from the value set may appropriately be used.</td>
  </tr>
  <tr>
    <td>code</td>
    <td>A required field with ‘extensible’ binding to the LOINC code system http://loinc.org/.</td>
  </tr>
  <tr>
    <td>subject</td>
    <td>A required field constrained to Reference(Patient)—since the focus is on data exchange with patient assessment data.</td>
  </tr>
  <tr>
    <td>effective</td>
    <td>This field, limited to the type dateTime only, indicates the time for the observation.</td>
  </tr>
  <tr>
    <td>performer</td>
    <td>At least one ‘performer’ is required to be present to indicate who is responsible for the observation.</td>
  </tr>
  <tr>
    <td>value</td>
    <td>It is strongly recommended that the CodeableConcept type be used whenever possible to provide a suitable code to define the concept for the value.</td>
  </tr>
  <tr>
    <td>component.code</td>
    <td>This is a required field, if it is used, to hold the LOINC code or text value of a column header (for the purpose of grouping answers under a heading and displaying side-by-side columns).</td>
  </tr>
  <tr>
    <td>component.value</td>
    <td>This field, if it is used, contains the answer to the (associated) observation question.</td>
  </tr>
  <tr>
    <td>derivedFrom</td>
    <td>This field points to a CognitionQuestionnaireResponse instance.</td>
  </tr>
</table>

### Resource Profile: PriorLevelOfCognitiveFunction

This resource profile is intended to be used for the exchange of prior level of cognitive function data when formal prior level of cognitive assessments are not available. It is derived from the FHIR resource Observation.

<table class="grid">
  <thead>
    <tr>
      <th>Key Fields to Highlight</th>
      <th>Description & Constraints</th>
    </tr>
  </thead>
  <tr>
    <td>event-location</td>
    <td>A “must support” extension added to the Observation resource for storing the Reference(Location) to indicate where the observation event occurred.</td>
  </tr>
  <tr>
    <td>assistance-required</td>
    <td>A “must support” extension added to the Observation resource to provide indication of 'independent' vs. 'assistance needed'.</td>
  </tr>
  <tr>
    <td>text</td>
    <td>A “must support” field and to be used as text summary of the prior level of cognitive function for the patient.</td>
  </tr>
  <tr>
    <td>code</td>
    <td>This required field has the fixed value of the LOINC code 11332-4 "History of Cognitive Function Narrative".</td>
  </tr>
  <tr>
    <td>subject</td>
    <td>A required field constrained to Reference(Patient)—since the focus is on data exchange with patient assessment data.</td>
  </tr>
  <tr>
    <td>effective</td>
    <td>This required field, limited to the type dateTime or Period only, indicates the time/time-period for the observation.</td>
  </tr>
  <tr>
    <td>performer</td>
    <td>At least one ‘performer’ is required to be present to indicate who is responsible for the observation.</td>
  </tr>
  <tr>
    <td>value</td>
    <td>Optional field with the type CodeableConcept.</td>
  </tr>
</table>

### Resource Profile: UseOfDevice

This resource profile is intended to be used for specifying a device used by a patient during a cognitive status assessment. It is derived from the FHIR resource DeviceUseStatement.

<table class="grid">
  <thead>
    <tr>
      <th>Key Fields to Highlight</th>
      <th>Description & Constraints</th>
    </tr>
  </thead>
  <tr>
    <td>subject</td>
    <td>A required field constrained to Reference(Patient)—since the focus is on data exchange with patient assessment data.</td>
  </tr>
  <tr>
    <td>device</td>
    <td>This field is required and points to a specific device used by patient during assessment.</td>
  </tr>
</table>

### Data Exchange Guidance and Examples

The PACIO data model as expressed in the resource profiles is designed to be flexible so as to facilitate the exchange of a variety of types of PAC assessment data. The key to effective data exchange and searching of assessment data is the use of content standards. Therefore, it is paramount that nationally accepted, standardized coding systems such as LOINC and SNOMED are used in specifying assessment data elements.

In the following set of examples, we provide guidance for using specific codes and conventions for constructing profile instances for data exchange. Although we reference a number of particular PAC patient/resident assessment instruments and provide examples to show how those particular types of assessment data can be exchanged, we do not endorse any of those assessment instruments over other assessment instruments that we have not mentioned. Our intention is to demonstrate the flexibility and adequacy of the PACIO data model, rather than to suggest the best types of cognitive assessment data for clinicians to use.

### CognitionQuestionnaireResponse – CAM Example

![QResponse CAM Example](QResponse_CAM_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. The ‘questionnaire’ field is the URL pointing to the file of the questionnaire that defines and organizes the questions for which answers are being provided.
2. Use ‘id’ field to indicate the code of a section title or an observation question. For example, the LOINC code ‘86585-7.’
3. Each ‘linkId’ field should match the ‘linkId’ of the corresponding section title or question from the questionnaire.
4. The nesting structure of the ‘item’ fields should correspond to the nesting structure as showed in the questionnaire.

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
3. The observation questions of the PHQ-9 assessment are grouped under two headings. One way to determine which ‘hasMember’ elements (i.e. observation questions) should be grouped together and under which heading is to examine the CognitionQuestionnaireResponse resource which has the nesting structure to show how the questions were organized.

### PriorLevelOfCognitiveFunction – Prior Level of Cognitive Function Example

![PLOCF Example](PLOCF_Example.png){:style="float: none;"}

**Guidance and Notes:**
1. Use the extension to provide indication of 'independent' vs. 'assistance needed'.
2. Text summary of the prior level of cognitive function for the patient.
