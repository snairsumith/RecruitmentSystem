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
public class UserModel {

    private String UserId;
    private String UserName;
    private String FirstName;
    private String LastName;
    private String Gender;
    private String Dob;
    private String Email;
    private String Country;
    private String City;
    private String Contact;
    private String Experience;
    private String HigherQualification;
    private String Marks;
    private String University;
    private String RegDate;
    private String RegTime;
    private String ProfileNotification;
    private String EmailNotification;
    private String Photo;
    private String Cv;
    private String MarkList;
    private String IdProof;
    private String Home;
    private String State;
    private String PostCode;

    public UserModel(String UserId, String UserName, String FirstName, String LastName, String Gender, String Dob, String Email, String Country, String City, String Contact, String Experience, String HigherQualification, String Marks, String University, String RegDate, String RegTime, String ProfileNotification, String EmailNotification, String Photo, String Cv, String MarkList, String IdProof, String Home, String State, String PostCode) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Gender = Gender;
        this.Dob = Dob;
        this.Email = Email;
        this.Country = Country;
        this.City = City;
        this.Contact = Contact;
        this.Experience = Experience;
        this.HigherQualification = HigherQualification;
        this.Marks = Marks;
        this.University = University;
        this.RegDate = RegDate;
        this.RegTime = RegTime;
        this.ProfileNotification = ProfileNotification;
        this.EmailNotification = EmailNotification;
        this.Photo = Photo;
        this.Cv = Cv;
        this.MarkList = MarkList;
        this.IdProof = IdProof;
        this.Home = Home;
        this.State = State;
        this.PostCode = PostCode;
    }

    /**
     * @return the UserId
     */
    public String getUserId() {
        return UserId;
    }

    /**
     * @param UserId the UserId to set
     */
    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    /**
     * @return the UserName
     */
    public String getUserName() {
        return UserName;
    }

    /**
     * @param UserName the UserName to set
     */
    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    /**
     * @return the FirstName
     */
    public String getFirstName() {
        return FirstName;
    }

    /**
     * @param FirstName the FirstName to set
     */
    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    /**
     * @return the LastName
     */
    public String getLastName() {
        return LastName;
    }

    /**
     * @param LastName the LastName to set
     */
    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    /**
     * @return the Gender
     */
    public String getGender() {
        return Gender;
    }

    /**
     * @param Gender the Gender to set
     */
    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    /**
     * @return the Dob
     */
    public String getDob() {
        return Dob;
    }

    /**
     * @param Dob the Dob to set
     */
    public void setDob(String Dob) {
        this.Dob = Dob;
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
     * @return the Country
     */
    public String getCountry() {
        return Country;
    }

    /**
     * @param Country the Country to set
     */
    public void setCountry(String Country) {
        this.Country = Country;
    }

    /**
     * @return the City
     */
    public String getCity() {
        return City;
    }

    /**
     * @param City the City to set
     */
    public void setCity(String City) {
        this.City = City;
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
     * @return the Experience
     */
    public String getExperience() {
        return Experience;
    }

    /**
     * @param Experience the Experience to set
     */
    public void setExperience(String Experience) {
        this.Experience = Experience;
    }

    /**
     * @return the HigherQualification
     */
    public String getHigherQualification() {
        return HigherQualification;
    }

    /**
     * @param HigherQualification the HigherQualification to set
     */
    public void setHigherQualification(String HigherQualification) {
        this.HigherQualification = HigherQualification;
    }

    /**
     * @return the Marks
     */
    public String getMarks() {
        return Marks;
    }

    /**
     * @param Marks the Marks to set
     */
    public void setMarks(String Marks) {
        this.Marks = Marks;
    }

    /**
     * @return the University
     */
    public String getUniversity() {
        return University;
    }

    /**
     * @param University the University to set
     */
    public void setUniversity(String University) {
        this.University = University;
    }

    /**
     * @return the RegDate
     */
    public String getRegDate() {
        return RegDate;
    }

    /**
     * @param RegDate the RegDate to set
     */
    public void setRegDate(String RegDate) {
        this.RegDate = RegDate;
    }

    /**
     * @return the RegTime
     */
    public String getRegTime() {
        return RegTime;
    }

    /**
     * @param RegTime the RegTime to set
     */
    public void setRegTime(String RegTime) {
        this.RegTime = RegTime;
    }

    /**
     * @return the ProfileNotification
     */
    public String getProfileNotification() {
        return ProfileNotification;
    }

    /**
     * @param ProfileNotification the ProfileNotification to set
     */
    public void setProfileNotification(String ProfileNotification) {
        this.ProfileNotification = ProfileNotification;
    }

    /**
     * @return the EmailNotification
     */
    public String getEmailNotification() {
        return EmailNotification;
    }

    /**
     * @param EmailNotification the EmailNotification to set
     */
    public void setEmailNotification(String EmailNotification) {
        this.EmailNotification = EmailNotification;
    }

    /**
     * @return the Photo
     */
    public String getPhoto() {
        return Photo;
    }

    /**
     * @param Photo the Photo to set
     */
    public void setPhoto(String Photo) {
        this.Photo = Photo;
    }

    /**
     * @return the Cv
     */
    public String getCv() {
        return Cv;
    }

    /**
     * @param Cv the Cv to set
     */
    public void setCv(String Cv) {
        this.Cv = Cv;
    }

    /**
     * @return the MarkList
     */
    public String getMarkList() {
        return MarkList;
    }

    /**
     * @param MarkList the MarkList to set
     */
    public void setMarkList(String MarkList) {
        this.MarkList = MarkList;
    }

    /**
     * @return the IdProof
     */
    public String getIdProof() {
        return IdProof;
    }

    /**
     * @param IdProof the IdProof to set
     */
    public void setIdProof(String IdProof) {
        this.IdProof = IdProof;
    }

    /**
     * @return the Home
     */
    public String getHome() {
        return Home;
    }

    /**
     * @param Home the Home to set
     */
    public void setHome(String Home) {
        this.Home = Home;
    }

    /**
     * @return the State
     */
    public String getState() {
        return State;
    }

    /**
     * @param State the State to set
     */
    public void setState(String State) {
        this.State = State;
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
}
