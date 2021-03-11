package com.farhana.model;

public class JobsModel {

    private String jobTitle;
    private String jobType;
    private String jobLocation;
    private String jobDescription;
    private String skills;
    private String salary;
    private String poser;

    public JobsModel() {
    }

    public JobsModel(String jobTitle, String jobType, String jobLocation, String jobDescription, String skills, String salary, String poser) {
        this.jobTitle = jobTitle;
        this.jobType = jobType;
        this.jobLocation = jobLocation;
        this.jobDescription = jobDescription;
        this.skills = skills;
        this.salary = salary;
        this.poser = poser;
    }

    public String getPoser() {
        return poser;
    }

    public void setPoser(String poser) {
        this.poser = poser;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getJobLocation() {
        return jobLocation;
    }

    public void setJobLocation(String jobLocation) {
        this.jobLocation = jobLocation;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "JobsModel{" + "jobTitle=" + jobTitle + ", jobType=" + jobType + ", jobLocation=" + jobLocation + ", jobDescription=" + jobDescription + ", skills=" + skills + ", salary=" + salary + ", poser=" + poser + '}';
    }

}
