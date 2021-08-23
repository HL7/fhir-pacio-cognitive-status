### Example Scenario

Cognitive and mental status observations may be collected in various ways including assessment tools, instruments, screens,  or other types of structured resources.  Although the example and use case reflect a post-acute care (PAC) scenario, this IG is intended to cover the FHIR-based exchange of cognitive and mental status observations completed and exchanged between healthcare settings and Home and Community-Based Services (HCBS) broadly.

Post-acute care patients are typically complex from a healthcare perspective and have many stops during their healthcare journey (as shown in Figure 1). Cognitive and mental observations are conducted by professional staff at the healthcare settings. As the patient moves from one healthcare setting to another, it is important that their cognitive data travel with them so that the new healthcare setting has the most complete information about that patient to provide the best care, effectively coordinates care with multiple providers/professionals, and has a picture of an individual’s cognitive status (and changes) over time.

Figure 1, the example PAC patient healthcare journey, illustrates a common scenario for an elderly patient moving through the healthcare ecosystem. The journey starts with Ms. Smith in her home. She has a medical event that results in an emergency medical service (EMS) transport to Hospital A. Following her hospital stay, Ms. Smith returns home and receives PAC Home Health services. The Home Health agency is coordinating care with multiple professionals and provider organizations including Ms. Smith’s primary physician and her pharmacy, behavioral health provider, and outpatient dialysis provider. During her Home Health encounter, an Outcome and Assessment Information Set (OASIS) is complete which includes cognitive and mental observations and electronically transmitted to CMS as required. The assessment instrument resides in the agencies EHR and the cognitive and mental observations are shared using FHIR with her and her care team as appropriate.

Ms. Smith has another medical event at home and is transferred to Hospital B. Her previous cognitive and mental observations data is shared with the hospital. From Hospital B, Ms. Smith is transferred to a PAC Skilled Nursing Facility (SNF). The hospital shares information with the SNF including cognitive and mental details. The SNF completes a Minimum Data Set (MDS) assessment instrument which includes cognitive and mental information and electronically transmits the MDS to CMS. The cognitive and mental observations are shared with Ms. Smith and her care team (Physician, Pharmacy, Daughter, etc.). She is discharged from the SNF and returns home with a variety of home and community-based Services. The SNF shares information with Ms. Smith, her daughter, her physician and HCBS providers to support care transition and coordination. While receiving HCBS, the Functional Assessment Standardized Items (FASI) is completed which includes a cognitive and mental observations. FASI data is electronically transmitted to CMS. The HCBS provider shares current and longitudinal cognitive and mental observations with Ms. Smith’s care team and providers.


![Patient Journey](Patient_Journey.png){:style="float: none;"}

Figure 1: Example Post-acute Care Patient Healthcare Journey


### Data Exchange

In Figure 2, the patient is admitted to Healthcare Setting A due to the result of an event requiring medical attention, such as a stroke. Healthcare setting A has the patient complete several cognitive and mental assessment instruments. The results are documented in the electronic health record (EHR) system of Healthcare Setting A.

Healthcare Setting A transfers the patient to Healthcare Setting B. When the patient arrives at Healthcare Setting B, their clinicians can retrieve the results from the cognitive and mental assessment instruments that were performed on the patient at Healthcare Setting A, as part of the transfer summary, using the profiles for exchanging cognitive status data defined in this Implementation Guide. Additionally, during the patients stay in Healthcare setting B, the clinician documents the results from completed cognitive and mental assessment instruments.

Healthcare Setting B transfers the patient to Healthcare Setting C. When the patient arrives at Healthcare Setting C, their clinicians can retrieve the results from the cognitive and mental assessment instruments that were performed on the patient at Healthcare Setting A and Healthcare Setting B, as part of the transfer summary, using the profiles for exchanging cognitive status data defined in this Implementation Guide.

Authorized caregivers, including the patient, their family, and clinicians can also access the results from the cognitive and mental assessment instruments from Healthcare Setting A, Healthcare Setting B, and Healthcare Setting C at any time through a patient sharing system (mobile/web application), so that they are informed about the patient’s care, can track progress, and can be more engaged in their healthcare decisions.


![Cognitive Status Use Case](Cognitive_Status_Use_Case.png){:style="float: none;"}

Figure 2: Cognitive Status Use Case