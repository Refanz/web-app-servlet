package com.refanzzzz.dynamicwebapplication.src.util;

import com.refanzzzz.dynamicwebapplication.src.model.StudentBean;

import java.util.List;

public class Utils {
    public static String generateRowSpanByDepartment(String department) {
        String rowSpan = "";

        switch (department) {
            case "Dep 1":
                rowSpan = "4";
                break;
            case "Dep 2":
                rowSpan = "1";
                break;
            case "Dep 3":
                rowSpan = "3";
                break;
        }

        return rowSpan;
    }

    public static Integer calculatePass(List<StudentBean> students) {
        int passStudent = 0;
        int totalStudent = students.size();

        for (StudentBean student : students) {
            if (student.getMark() > 40) {
                passStudent++;
            }
        }


        return (int) (((double) passStudent / (double) totalStudent) * 100);
    }

    public static List<StudentBean> filterStudentsByDepartment(List<StudentBean> students, String department) {
        return students.stream().filter((student) -> student.getDepartment().equals(department)).toList();
    }
}
