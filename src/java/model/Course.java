/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author Pham An
 */
public class Course{
    private int courseId;
    private String courseName;
    private Date coursesTimeStart;
    private Date coursesTimeFinish;
    private String courseType;
    private String courseAddress;
    private String teacher;
    private String courseImages;
    private String description;

    public Course(){
        
    }
    public Course(int courseId, String courseName, Date coursesTimeStart, Date coursesTimeFinish, String courseType, String courseAddress, String teacher, String courseImages, String description) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.coursesTimeStart = coursesTimeStart;
        this.coursesTimeFinish = coursesTimeFinish;
        this.courseType = courseType;
        this.courseAddress = courseAddress;
        this.teacher = teacher;
        this.courseImages = courseImages;
        this.description = description;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Date getCoursesTimeStart() {
        return coursesTimeStart;
    }

    public void setCoursesTimeStart(Date coursesTimeStart) {
        this.coursesTimeStart = coursesTimeStart;
    }

    public Date getCoursesTimeFinish() {
        return coursesTimeFinish;
    }

    public void setCoursesTimeFinish(Date coursesTimeFinish) {
        this.coursesTimeFinish = coursesTimeFinish;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCourseAddress() {
        return courseAddress;
    }

    public void setCourseAddress(String courseAddress) {
        this.courseAddress = courseAddress;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getCourseImages() {
        return courseImages;
    }

    public void setCourseImages(String courseImages) {
        this.courseImages = courseImages;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
}
