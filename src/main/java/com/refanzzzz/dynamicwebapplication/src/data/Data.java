package com.refanzzzz.dynamicwebapplication.src.data;

import com.refanzzzz.dynamicwebapplication.src.model.StudentBean;

import java.util.List;

public class Data {
    public final static String USER_ID = "user-1";
    public final static String PASSWORD = "password";

    public static List<StudentBean> getStudents() {
        return List.of(
                new StudentBean("S1", "Refan", Department.DEP_1.getName(), 35),
                new StudentBean("S2", "Abdul",Department.DEP_1.getName(), 70),
                new StudentBean("S3", "Zidane", Department.DEP_1.getName(), 60),
                new StudentBean("S4", "Aldo", Department.DEP_1.getName(), 90),
                new StudentBean("S5", "Iman", Department.DEP_2.getName(), 30),
                new StudentBean("S6", "Kristianto", Department.DEP_3.getName(), 32),
                new StudentBean("S7", "Darul", Department.DEP_3.getName(), 70),
                new StudentBean("S8", "Masum", Department.DEP_3.getName(), 20)
        );
    }
}
