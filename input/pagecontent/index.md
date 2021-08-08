### Background

An individual’s cognitive status and mental functioning is crucial information to communicate for successful care coordination at transition of care and for on-going shared care. Care coordination – when a person transitions between healthcare settings, including ambulatory care, acute care, long-term post-acute care (LTPAC), and home- and community-based services (HCBS) – is often fragmented and can lead to poor health outcomes, increased burden, and increased costs. Interoperable health information exchange has the potential to improve patient and provider communications and supports access to longitudinal health information that enables improved efficiencies, improved quality of care, and improved health outcomes. Data should be usable across the continuum of care, and beyond the traditional healthcare system – into the community.

Providers frequently are not receiving complete and accurate information including cognitive status and mental functioning in a timely manner, leading to adverse outcomes and additional expenses. Failure to exchange accurate, timely data often leads to inefficient workflows, duplicative data entries, and increased risk of patient harm attributable to missing or inaccurate information. Health IT can significantly alleviate administrative burden by supporting health information exchange across care settings to ensure that the relevant information necessary to care for the incoming patient is delivered to the right person, at the right time- therefore improving patient outcomes, reducing provider burden, improving cost efficiencies, and improving workflows. Moreover, enhanced data exchange would allow for advanced computability, standardization, usability, and real-time data analytics, enabling broader data use by health IT developers, researchers, providers, and payers.

Poor quality discharge information is a major barrier to safe and effective transitions. With 45% of Medicare beneficiaries requiring post-acute care (PAC) services after hospitalization, the need for a seamless exchange of health information is great. The findings from a 2020 study highlight the significant gap in sharing information at transition.The survey assessed continuity between hospitals and skilled nursing facilities (SNF) and found that at transition of care complete mental status information was received by the SNF only 6% of the time. [[JAMA Network Open. 2021;4(1):e2033980. doi: 10.1001/jamanetworkopen.2020.33980](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2775075)].

The scope of this Cognitive Status Implementation Guide (IG) focuses on exchanging cognitive and mental function observations primarily involving post-acute care transitions with various care settings and HCBS. While this is the start, the IG is intended to expand over time and include cognitive status and mental functioning observations not limited to post-acute care. The impetus for this initial focus is the amendment to the Social Security Act in 2014 to include the Improving Medicare Post-Acute Care Transformation (IMPACT) Act. IMPACT required the standardization and interoperability of patient assessment in specific categories for PAC settings, including long-term care hospitals (LTCHs), home health agencies (HHAs), SNFs, and inpatient rehabilitation facilities (IRFs). It focuses on standardizing data elements in specified quality measure domains and patient assessment domains for cross setting comparison and clinical information exchange, respectively.

The Act requires:
* Reporting of standardized patient assessment data through commonly used PAC assessment instruments:
    * Minimum Data Set (MDS)for SNFs
    * Inpatient Rehabilitation Facility – Patient Assessment Information (IRF – PAI) for IRFs
    * LTCH Continuity Assessment Record and Evaluation (CARE) Data Set (LCDS) for LTCHs
    * Outcome and Assessment Information Set (OASIS) for HHAs
* Implementation of data elements specified in each domain using standardized data elements to be nested within the assessment instruments currently required for submission by LTCH, IRF, SNF, and HHA providers.
* Data to be standardized and interoperable to allow exchange of data between PAC providers, among others, using common standards and definitions to provide access to longitudinal information and facilitate coordinated care.

![PACIO logo](./pacio.png)

### The PACIO Project

The PACIO Project is a collaborative effort to advance interoperable health data exchange between PAC and other providers, patients, and key stakeholders across health care and to promote health data exchange in collaboration with policy makers, standards organizations, and industry through a consensus-based approach.

The primary goal of the PACIO Project is to establish a framework for the development of Fast Healthcare Interoperability Resource (FHIR) technical implementation guides (IGs) and reference implementations that will facilitate health data exchange through standards-based use case-driven application programming interfaces (APIs).

### Cognitive Status

While the IG references cognitive status, it is intended to include more broadly clinical domains in mental functioning observations (characteristics that can be tested, measured, or observed and are communicated with a name-value pair structure).  Mental functioning is a broad domain. We are using the conceptual framework of the International Classification of Functioning, Disability and Health (commonly known as ICF), to highlight areas of expansion in the future including aspects such as memory functions, orientation functions, attention functions, mood, etc.  More information on mental function concepts that may be included in this IG can be found in the [ICF Browser](https://apps.who.int/classifications/icfbrowser/).

The focus of this IG is on cognitive status and mental functioning observation data (not the representation of the condition, problem, diagnosis, or health concern) utilized by various settings by providing examples using observation data from Brief Interview for Mental Status (BIMS),  Confusion Assessment Method (CAM), Montreal Cognitive Assessment (MoCA), Mini-Mental State Examination (MMSE), prior level of cognitive function, and Patient Health Questionnaire (PHQ-9) all of which have LOINC representation for the question/answer structure. This IG is not limited to post-acute care cognitive status and mental functioning observations and in the future will be expanded to include other relevant observations utilized by health care settings and practitioners more broadly. A cognitive status and mental functioning observation are part of an evaluation or assessment of a patient’s status. The cognitive and mental observations may include details of a patient’s mood, memory, and ability to make decisions. The observation data, if present, will include supporting caregivers, non-medical devices, and the time period for which the assessment instruments were performed.

In this IG a set of starter profiles based on some well-established FHIR resources is presented to define data models which specify data elements and coding standards to promote standardization and interoperability.

### Content and Organization
The implementation guide is organized into the following sections:
* [Use Case Example](cognitive_status_use_case.html) Describes an example of its use and provides a high-level overview of expected process flow.
* [Underlying Technologies](underlying_technologies.html) Describes the different specifications this implementation guide relies on and indicates what developers should read and understand prior to implementing this specification.
* [Profile Highlights and Guidance](profile_highlights_and_guidance.html) Provides a closer look at the IG profiles and guidance for constructing profile instances with examples for data exchange.
* [Representative Assessments](representative_assessments.html) Presents representative examples of standardized instruments and guidance on the use of standardized code systems.
* [Security and Data Sharing](security_and_data_sharing.html) Covers issues concerning security and patient information access and sharing.
* [Artifacts Summary](artifacts.html) Introduces and provides links to the Capability Statement, IG Resource Profiles, and IG Extension Definitions as well as example profile instances.

### Dependencies
This implementation guide relies on the following other specifications:
* [FHIR R4]({{site.data.fhir.path}}) - The 'current' official version of FHIR as of the time this implementation guide was published.  See the [background page](underlying_technologies.html) for key pieces of this specification implementers should be familiar with.
* [US Core STU3](http://hl7.org/fhir/us/core) - The version of US Core based on FHIR R4.

This implementation guide defines additional constraints and usage expectations above and beyond the information found in these base specifications.

### Downloads
* The full [PACIO Cognitive Status Implementation Guide](full-ig.zip)
* [FHIR R4 PACIO CS Resource Definitions](definitions.json.zip) for use with the FHIR PACIO CS IG validator
* [FHIR R4 PACIO CS IG Validator Pack](validator-hl7.fhir.us.pacio-cs.pack) which can be used to check FHIR PACIO CS IG resource instance validity