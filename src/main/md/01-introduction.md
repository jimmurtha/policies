# 1. Introduction

Archway Health Advisors, LLC ("Archway") is committed to ensuring the confidentiality, privacy, integrity, and availability of all electronic protected health information (ePHI) it receives, maintains, processes and/or transmits on behalf of its Customers. As providers of compliant, hosted services used by health technology vendors, developers, designers, agencies, custom development shops, and enterprises, Archway strives to maintain compliance, proactively address information security, mitigate risk for its Customers, and assure known breaches are completely and effectively communicated in a timely manner. The following documents address core policies used by Archway to maintain compliance and assure the proper protections of infrastructure used to store, process, and transmit ePHI for Archway Customers.

Archway provides secure and compliant cloud-based services ("Services"). These services are 1) **Archway Carelink (Carelink)**, 2) **Archway Analytics (Analytics)**.

## 1.1 Archway Infrastructure

Services are hosted and deployed into compliant containers run on systems secured and managed by Archway. 

Archway makes every effort to reduce the risk of unauthorized disclosure, access, and/or breach of Customer data through network (firewalls, dedicated IP spaces, etc) and server settings (encryption at rest and in transit, IDS throughout the Platform, etc).

## 1.2 Archway Carelink

Archway Carelink provides Customer with the ability to track patients during an episode of care.

Customer can create Care Plans to define episode of care their patient is likely to go through. Care Plans translate into access rules so other providers can provide update for patient during episode of care (e.g. admission, feeling updates, red flags, discharge, etc.).


## 1.3 Archway Analytics

Archway Analytics provides Customer with the ability to monitor and consult Customer's claim analysis and care performance online.

Claim data is transformed into reports relevant for Customer. Reports provided range from bundle-level summaries to episode details with care provided to patient at the time.

## 1.4 Compliance

Archway signs business associate agreements (BAAs) with its Customers. These BAAs outline Archway obligations and Customer obligations, as well as liability in the case of a breach. In providing services and managing security that are a part of the technology requirements that exist in HIPAA and HITRUST, as well as future compliance frameworks, Archway manages various aspects of compliance for Customers. The aspects of compliance that Archway manages for Customers are inherited by Customers, and Archway assumes the risk associated with those aspects of compliance. In doing so, Archway helps Customers achieve and maintain compliance, as well as mitigates Customers risk.

Archway does act as a covered entity. When Archway does operate as a business associate (not a subcontractor), Archway does interface with users to obtain or provide access to ePHI.

Certain aspects of compliance cannot be inherited. Because of this, Archway Customers, in order to achieve full compliance or HITRUST Certification, must implement certain organizational policies. These policies and aspects of compliance fall outside of the services and obligations of Archway.

Mappings of HIPAA Rules to Archway controls and a mapping of what Rules are inherited by Customers are covered in [§2](#2.-hipaa-inheritance).

## 1.5 Archway Organizational Concepts

The physical infrastructure environment is hosted at [Amazon Web Services](https://aws.amazon.com/) (AWS). The network components and supporting network infrastructure are contained within AWS infrastructures and managed by AWS. Archway does not have physical access into the network components. The Archway environment consists of nginx/httpd web servers; Java application servers; MySQL (RDS) database servers; HPCC Systems clusters; OSSEC/Snort IDS services; and Docker containers.

Within the Archway Platform all data transmission is encrypted and all hard drives are encrypted so data at rest is also encrypted; this applies to all servers - those hosting Docker containers, databases, APIs, log servers, etc. Archway assumes all data *may* contain ePHI, even though our Risk Assessment does not indicate this is the case, and provides appropriate protections based on that assumption.

Services provides with Customer the ability to coordinate care with other providers during an episode of care. Consequently, Data is segmented at the application level using rules and permissions based on the concept of provider involved in patients' episode of care, defined by Customers when using Services.

Unit and end-to-end testing is performed on Services to ensure security and privacy are maintained between and before releases.

## 1.5 Requesting Audit and Compliance Reports

Archway, at its sole discretion, shares audit reports, including its HITRUST reports and Corrective Action Plans (CAPs), with customers on a case by case basis. All audit reports are shared under explicit NDA in Archway format between Archway and party to receive materials. Audit reports can be requested by Archway workforce members for Customers or directly by Archway Customers.

The following process is used to request audit reports:

1. Email is sent to compliance@archwayha.com. In the email, please specify "Compliance Reports" in the Subject and the type of report being requested and any required timelines for the report in the body.
2. Archway staff will log an Issue with the details of the request into the Archway Compliance Review Activities Project. 
3. Trello and/or JIRA is used is used to track requests status and outcomes.
3. Archway will confirm if a current NDA is in place with the party requesting the audit report. If there is no NDA in place, Archway will send one for execution.
4. Once it has been confirmed that an NDA is executed, Archway staff will label the Issue as "Under Review".
5. The Archway Security and Privacy Officer must Approve or Reject the Issue. If the Issue is rejected, Archway will notify the requesting party that we cannot share the requested report.
4. If the Issue has been Approved, Archway will send the customer the requested audit report and complete the Issue for the request.

## 1.6 Version Control

Refer to the GitHub repository at [https://github.com/Archway-Health/policies](https://github.com/Archway-Health/policies) for the full version history of these policies.