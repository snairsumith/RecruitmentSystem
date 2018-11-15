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
public class CompanyModel {

    private int CompanyId;
    private String CompanyName;
    private String Email;
    private String Address;
    private String Country;
    private String City;
    private String Contact;
    private String CompanyWebsite;

    public CompanyModel(int CompanyId, String CompanyName, String Email,String Address, String Country, String City, String Contact, String CompanyWebsite) {
        this.CompanyId = CompanyId;
        this.CompanyName = CompanyName;
        this.Email = Email;
        this.Address = Address;
        this.Country = Country;
        this.City = City;
        this.Contact = Contact;
        this.CompanyWebsite = CompanyWebsite;
    }

    /**
     * @return the CompanyId
     */
    public int getCompanyId() {
        return CompanyId;
    }

    /**
     * @param CompanyId the CompanyId to set
     */
    public void setCompanyId(int CompanyId) {
        this.CompanyId = CompanyId;
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
     * @return the CompanyWebsite
     */
    public String getCompanyWebsite() {
        return CompanyWebsite;
    }

    /**
     * @param CompanyWebsite the CompanyWebsite to set
     */
    public void setCompanyWebsite(String CompanyWebsite) {
        this.CompanyWebsite = CompanyWebsite;
    }

}
