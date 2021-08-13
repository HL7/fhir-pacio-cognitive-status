<blockquote class="stu-note">
<p><b>Note to Commenters:</b>
The PACIO Cognitive Status workgroup is seeking feedback on the level of guidance needed related to specific assessment instruments. In addition, comments around whether this guidance should be included in the Cognitive Assessment IG or published as a supplemental guide.
</p>
<p><b>Note to Commenters:</b>
LOINC is included as an example. We would like to find out how prevalent other code systems (i.e. SNOMED) and should guidance be included here.
</p>
</blockquote>
<br>
### Standardized Assessments and Code Systems

A large number and variety of assessment instruments exist for assessing cognitive function in care settings. The following instruments have been analyzed for the purposes of providing implementation guidance and exchange of cognitive status. Standardized instruments that assess cognitive function fall into three broad categories based on use of standardized code systems.

1. Fully Codified -- These instruments have standardized terminology associated with them, meaning the entire instrument can be modelled.
2. Partially Codified -- These instruments generally have standardized question and answer pairs and a code to describe the instrument and total score. However, critical meta data or other information may only be found on the assessment itself.
3. Not Codified -- These instruments do not have standard codes associated with them and may be proprietary. Exchange of this information may require special handling and/or development. In this case it is expected that the assessment instrument and result are expected to be exchanged.

Representative examples of each of these categories are provided in the following sections to guide implementers.

### Fully Codified Assessments

 The following are considered fully codified assessments:

<table class="grid">
  <thead>
    <tr>
      <th>COGNITIVE TESTS/SCREENS</th>
      <th>LOINC</th>
    </tr>
  </thead>
  <tr>
    <td>Confusion Assessment Method (CAM)</td>
    <td>52495-9 Confusion Assessment Method (CAM)<br>
        &nbsp;&nbsp; 52738-2 Inattention<br>
        &nbsp;&nbsp; 52739-0 Disorganized thinking<br>
        &nbsp;&nbsp; 52740-8 Altered level of consciousness/alertness<br>
        &nbsp;&nbsp; 52741-6 Psychomotor retardation
    </td>
  </tr>
  <tr>
    <td>Brief Interview for Mental Status (BIMS)</td>
    <td>52491-8 Brief Interview for Mental Status<br>
        &nbsp;&nbsp; 52731-7 Repetition of Three Words. Number of words repeated after first attempt<br>
        &nbsp;&nbsp; 54510-3 Temporal Orientation (orientation to year, month, and day)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 52732-5 Able to report correct year<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 52733-3 Able to report correct month<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 54609-3 Able to report correct day of the week<br>
        &nbsp;&nbsp; 52493-4 Recall<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 52735-8 Able to recall "sock"<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 52736-6 Able to recall "blue"<br>
        &nbsp;&nbsp;&nbsp;&nbsp; 52737-4 Able to recall "bed"<br>
        &nbsp;&nbsp; 54614-3 BIMS Summary Score
    </td>
  </tr>
  <tr>
    <td>Patient Health Questionnaire (PHQ)</td>
    <td>58120-7 Patient Health Questionnaire 2 item (PHQ-2) [PHQ.CMS]<br>
        55758-7 Patient Health Questionnaire 2 item (PHQ-2) total score [Reported]<br><br>
        54635-8 Patient Mood Interview (PHQ-2 to 9)<br>
        44261-6 Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]<br><br>
        54657-2 Staff assessment of resident mood (PHQ-9-OV) [Observed PHQ-9 CMS]<br>
        54677-0 Staff assessment of resident mood total severity score [Observed PHQ-9 CMS]<br><br>
        89206-7 Patient Health Questionnaire-9: Modified for Teens [Reported.PHQ.Teen]<br>
        89204-2 Patient Health Questionnaire-9: Modified for Teens total score [Reported.PHQ.Teen]
    </td>
  </tr>
</table>

### Partially Codified Assessments

Assessments that have LOINC codes for representing the instrument should be used for exchanging the instrument and result. Additional ‘meta data’ fields, such as author can be mapped using QuestionnaireResponse.

MoCA is provided as an example:

<table class="grid">
  <tr>
    <td>Montreal Cognitive Assessment (MoCA)</td>
    <td>72133-2 Montreal Cognitive Assessment [MoCA]<br>
        72172-0 Total score [MoCA]
    </td>
  </tr>
</table>

### Not Codified Assessments

Some assessments do not have any codes associated with them. In this case, the individual data elements contained in the assessment instrument can be mapped to QuestionnaireResponse fields.

The Brief Cognitive Assessment Tool (BCAT) is included here as an example:

<table class="grid">
  <thead>
    <tr>
      <th>BCAT Fields</th>
      <th>Mapping</th>
      <th>Reference Mapping</th>
      <th>Values</th>
    </tr>
  </thead>
  <tr>
    <td>Name</td>
    <td>QuestionnaireResponse.Subject</td>
    <td>patient.name</td>
    <td></td>
  </tr>
  <tr>
    <td>DOB</td>
    <td>QuestionnaireResponse.Subject</td>
    <td>patient.birthDate</td>
    <td></td>
  </tr>
  <tr>
    <td>Gender</td>
    <td>QuestionnaireResponse.Subject</td>
    <td>patient.gender</td>
    <td>AdministrativeGender (required)</td>
  </tr>
  <tr>
    <td>Education</td>
    <td>Observation.component</td>
    <td></td>
    <td>91694-0, LL836-8</td>
  </tr>
  <tr>
    <td>Examiner</td>
    <td>QuestionnaireResponse.author</td>
    <td>Reference to Practitioner/role</td>
    <td></td>
  </tr>
  <tr>
    <td>Today's Date</td>
    <td>QuestionnaireResponse.authored ('dateTime' type)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Total Score</td>
    <td>Observation.value</td>
    <td>Not contained in QuestionareResponse</td>
    <td></td>
  </tr>
  <tr>
    <td>referenceRange</td>
    <td>Observation.ReferenceRange</td>
    <td>Not part of BCAT form but needed for interpreting total score.</td>
    <td></td>
  </tr>
</table>

Codes for Education:
* CMS Data Element [A1050](https://del.cms.gov/DELWeb/pubDataEleDetail?asmtId=6&asmtItmId=A1050) Highest education completed<br>
* LOINC [91694-0](https://loinc.org/91694-0/) Highest level of education of Personnel
