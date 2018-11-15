/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author minusbug
 */
public class JobModel {

    private String JobPostId;
    private String JobTypeId;
    private String CompanyId;
    private String CreatedDate;
    private String JobTitle;
    private String Salary;
    private String Industry;
    private String JobDescription;
    private String Remark;
    private String StreetName;
    private String JobLocationId;
    private String PostCode;
    private String Contact;
    private String SecondaryContact;
    private String IsActive;
    private String CompanyName;
    private String Email;
    private String Address;
   
    

    public JobModel(String JobPostId, String JobTypeId, String CompanyId, String CreatedDate, String JobTitle, String Salary, String Industry, String JobDescription, String Remark, String StreetName, String JobLocationId, String PostCode, String Contact, String SecondaryContact, String IsActive,String CompanyName, String Email,String Address) {
        this.JobPostId = JobPostId;
        this.JobTypeId = JobTypeId;
        this.CompanyId = CompanyId;
        this.CreatedDate = CreatedDate;
        this.JobTitle = JobTitle;
        this.Salary = Salary;
        this.Industry = Industry;
        this.JobDescription = JobDescription;
        this.Remark = Remark;
        this.StreetName = StreetName;
        this.JobLocationId = JobLocationId;
        this.PostCode = PostCode;
        this.Contact = Contact;
        this.SecondaryContact = SecondaryContact;
        this.IsActive = IsActive;
    }

    /**
     * @return the JobPostId
     */
    public String getJobPostId() {
        return JobPostId;
    }

    /**
     * @param JobPostId the JobPostId to set
     */
    public void setJobPostId(String JobPostId) {
        this.JobPostId = JobPostId;
    }

    /**
     * @return the JobTypeId
     */
    public String getJobTypeId() {
        return JobTypeId;
    }

    /**
     * @param JobTypeId the JobTypeId to set
     */
    public void setJobTypeId(String JobTypeId) {
        this.JobTypeId = JobTypeId;
    }

    /**
     * @return the CompanyId
     */
    public String getCompanyId() {
        return CompanyId;
    }

    /**
     * @param CompanyId the CompanyId to set
     */
    public void setCompanyId(String CompanyId) {
        this.CompanyId = CompanyId;
    }

    /**
     * @return the CreatedDate
     */
    public String getCreatedDate() {
        return CreatedDate;
    }

    /**
     * @param CreatedDate the CreatedDate to set
     */
    public void setCreatedDate(String CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    /**
     * @return the JobTitle
     */
    public String getJobTitle() {
        return JobTitle;
    }

    /**
     * @param JobTitle the JobTitle to set
     */
    public void setJobTitle(String JobTitle) {
        this.JobTitle = JobTitle;
    }

    /**
     * @return the Salary
     */
    public String getSalary() {
        return Salary;
    }

    /**
     * @param Salary the Salary to set
     */
    public void setSalary(String Salary) {
        this.Salary = Salary;
    }

    /**
     * @return the Industry
     */
    public String getIndustry() {
        return Industry;
    }

    /**
     * @param Industry the Industry to set
     */
    public void setIndustry(String Industry) {
        this.Industry = Industry;
    }

    /**
     * @return the JobDescription
     */
    public String getJobDescription() {
        return JobDescription;
    }

    /**
     * @param JobDescription the JobDescription to set
     */
    public void setJobDescription(String JobDescription) {
        this.JobDescription = JobDescription;
    }

    /**
     * @return the Remark
     */
    public String getRemark() {
        return Remark;
    }

    /**
     * @param Remark the Remark to set
     */
    public void setRemark(String Remark) {
        this.Remark = Remark;
    }

    /**
     * @return the StreetName
     */
    public String getStreetName() {
        return StreetName;
    }

    /**
     * @param StreetName the StreetName to set
     */
    public void setStreetName(String StreetName) {
        this.StreetName = StreetName;
    }

    /**
     * @return the JobLocationId
     */
    public String getJobLocationId() {
        return JobLocationId;
    }

    /**
     * @param JobLocationId the JobLocationId to set
     */
    public void setJobLocationId(String JobLocationId) {
        this.JobLocationId = JobLocationId;
    }

    /**
     * @return the PostCode
     */
    public String getPostCode() {
        return PostCode;
    }

    /**
     * @param PostCode the PostCode to set
     */
    public void setPostCode(String PostCode) {
        this.PostCode = PostCode;
    }

    /**
     * @return the Contact
     */
    public String getContact() {
        return Contact;
    }

    /**
     * @param Contact the Contact to set
     */
    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    /**
     * @return the SecondaryContact
     */
    public String getSecondaryContact() {
        return SecondaryContact;
    }

    /**
     * @param SecondaryContact the SecondaryContact to set
     */
    public void setSecondaryContact(String SecondaryContact) {
        this.SecondaryContact = SecondaryContact;
    }

    /**
     * @return the IsActive
     */
    public String getIsActive() {
        return IsActive;
    }

    /**
     * @param IsActive the IsActive to set
     */
    public void setIsActive(String IsActive) {
        this.IsActive = IsActive;
    }

    /**
     * @return the CompanyName
     */
    public String getCompanyName() {
        return CompanyName;
    }

    /**
     * @param CompanyName the CompanyName to set
     */
    public void setCompanyName(String CompanyName) {
        this.CompanyName = CompanyName;
    }

    /**
     * @return the Email
     */
    public String getEmail() {
        return Email;
    }

    /**
     * @param Email the Email to set
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.Address = Address;
    }

}
