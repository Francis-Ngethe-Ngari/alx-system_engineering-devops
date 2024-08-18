### ERP Downtime Postmortem

---

#### **Issue Summary**

**Duration of Outage:**  
The outage lasted 1 hour and 30 minutes, from 2:00 to 3:30 AM (EAT) on 14th June 2024.

**Impact:**  
During this period, the Enterprise Resource Planning (ERP) system was completely unavailable, affecting approximately 50% of users who experienced total inaccessibility.

**Root Cause:**  
The outage was caused by a virus-infected user's computer that connected to the application server, leading to the deletion of the shared ERP instance.

---

#### **Timeline**

- **2:00 AM EAT:** Issue detected through end-user complaints.
- **2:05 AM EAT:** Initial investigation started, focusing on checking end-user devices.
- **2:10 AM EAT:** Misleading debugging path identified; it was initially suspected that the ERP instance shared path had been moved or deleted.
- **2:20 AM EAT:** The issue was escalated to the lead engineer for further investigation.
- **2:40 AM EAT:** The root cause was identified as a virus-infected user device, which resulted in the deletion of the shared ERP instance from the application server.
- **2:45 AM EAT:** A security analysis was conducted using antivirus software on all user computers connected to the application server.
- **3:30 AM EAT:** The service was fully restored, and the infected device was isolated.

---

#### **Root Cause and Resolution**

**Root Cause:**  
The unavailability of the ERP instance was due to a virus-infected user device, which led to the deletion of the shared ERP instance from the application server.

**Resolution:**  
The issue was resolved by isolating the infected user device. Access to the ERP instance was then restored to the affected users, except for the one with the infected device.

---

#### **Corrective and Preventative Measures**

**Improvements:**

- **Enhanced Monitoring:**  
  Implement measures to ensure that any infected device is immediately disconnected from the application server. Install an application monitoring tool to detect and isolate such incidents.

- **User Training:**  
  Educate end-users on proper safety practices, such as avoiding suspicious links and not visiting random websites.

**Tasks to Address the Issue:**

- **Ensure Antivirus Protection:**  
  All user devices, as well as the application server, must have up-to-date antivirus software installed to safeguard against similar threats.

- **Install a Monitoring Tool:**  
  Deploy a monitoring tool that tracks the health of all user computers and the server. This tool should also monitor and isolate incidents of failure.

---

#### **Conclusion**

This postmortem highlights the critical impact a single virus-infected device can have on system availability. The swift identification and resolution of the issue underscore the importance of robust security protocols and monitoring tools. Moving forward, enhanced security measures and user training will be essential in preventing similar incidents and ensuring the reliability of the ERP system.
