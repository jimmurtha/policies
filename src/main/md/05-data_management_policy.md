# 5. Data Management Policy

Archway has procedures to create and maintain retrievable exact copies of electronic protected health information (ePHI). This policy, and associated procedures for testing and restoring from backup data. The policy and procedures will assure that complete, accurate, retrievable, and tested backups are available for all systems used by Archway.

Data backup is an important part of the day-to-day operations of Archway. To protect the confidentiality, integrity, and availability of ePHI, both for Archway and Archway Customers, complete backups are done daily to assure that data remains available when it needed and in case of a disaster.

Violation of this policy and its procedures by workforce members may result in corrective disciplinary action, up to and including termination of employment.

## 5.1 Applicable Standards

### 5.1.1 Applicable Standards from the HITRUST Common Security Framework

* 01.v - Information Access Restriction
* 06.d - Data Protection and Privacy of Covered Information
* 09.p - Disposal of Media
* 08.l - Secure Disposal or Re-Use of Equipment

### 5.1.2 Applicable Standards from the HIPAA Security Rule

* 164.308(a)(7)(ii)(A) - Data Backup Plan
* 164.310(d)(2)(i) - Disposal
* 164.310(d)(2)(iii) - Accountability
* 164.310(d)(2)(iv) - Data Backup and Storage

## 5.2 Backup Policy and Procedures

1. Perform daily snapshot backups of all systems that process, store, or transmit ePHI for Archway Customers.
2. Archway Ops Team, lead by VP of Engineering, is designated to be in charge of backups.
3. Dev Ops Team members are trained and assigned to complete backups and manage the backup media.
4. Document backups
   * Name of the system
   * Date & time of backup
   * Where backup stored (or to whom it was provided)
5. Securely encrypt stored backups in a manner that protects them from loss or environmental damage.
6. Test backups and document that files have been completely and accurately restored from the backup media.

## 5.3 Sensitive Information Storage

All Sensitive information is transmitted and stored securely:

* AES-256 encryption is used to store objects on AWS Simple Storage Service (S3). S3 is used to store data in the long term (e.g. to provide Data Custody for Customers).
* AWS IAM Rules are in place as a deny-by-default access for S3. Only approved Archway Employees are granted access.
* AWS Elastic Block Storage (EBS) Volumes are encrypted prior to storing Sensitive Information. EBS is used to store data temporarily (e.g. to run data analysis).
* Google Drive can be used to store Sensitive information. Google Drive is HIPAA compliant and Archway signed a BAA with Google.
* Encryption (BitLocker for Windows, FileVault for Mac) is used on any computers storing Sensitive Information, even temporarily.
* HTTPS/TLS is used to transmit Sensitive Information.

## 5.4 Disposal of Sensitive Information

Data remanence is the residual representation of digital data that remains even after attempts have been made to remove or erase the data. 
This residue may result from data being left intact by a nominal file deletion operation, by reformatting of storage media that does not remove data previously written to the media, or through physical properties of the storage media that allow previously written data to be recovered. 
Data remanence may make inadvertent disclosure of sensitive information possible should the storage media be released into an uncontrolled environment (e.g., thrown in the trash or lost).

* Amazon Web Services (AWS) has policies in place on decommissioning storage devices (see "Physical and Environmental Security - Storage Device Decommissioning" at https://d0.awsstatic.com/whitepapers/aws-security-whitepaper.pdf)
* Sensitive information stored on encrypted Elastic Block Storage (EBS) Volumes must be scrubbed using at current standards (at least DoD 5220.22-M, 4-pass, pattern).
