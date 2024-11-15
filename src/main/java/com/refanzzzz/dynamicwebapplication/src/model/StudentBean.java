package com.refanzzzz.dynamicwebapplication.src.model;

public class StudentBean {
    private String studentId;
    private String studentName;
    private String department;
    private Integer mark;

    public StudentBean(String studentId, String studentName, String department, Integer mark) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.department = department;
        this.mark = mark;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}
