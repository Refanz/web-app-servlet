<%@ page
        contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"
        import="com.refanzzzz.dynamicwebapplication.src.model.LoginBean" %>
<%@ page import="java.util.List" %>
<%@ page import="com.refanzzzz.dynamicwebapplication.src.model.StudentBean" %>
<%@ page import="com.refanzzzz.dynamicwebapplication.src.util.Utils" %>
<%@ page import="java.util.ArrayList" %>
<%
    boolean isLogin = request.getAttribute("isLogin") != null;
    if (!isLogin) response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
    <span>
        <% if (isLogin) { %>
        <%
            LoginBean bean = (LoginBean) request.getAttribute("bean");
        %>
        <%="Welcome, " + bean.getUserId()%>
        <% }%>
    </span>
    <table>
        <tr>
            <th>Department</th>
            <th>Student ID</th>
            <th>Marks</th>
            <th>Pass %</th>
        </tr>
        <%
            if (isLogin) {
        %>

        <%
            List<StudentBean> students = (List<StudentBean>) request.getAttribute("students");
            List<StudentBean> temp1 = Utils.filterStudentsByDepartment(students, "Dep 1");
            for (int i = 0; i < temp1.size(); i++) {
        %>
        <tr>
            <td>
                <%
                    if (i == 0) {
                        out.print(temp1.get(i).getDepartment());
                    }
                %>
            </td>
            <td>
                <%=(temp1.get(i).getStudentId())%>
            </td>
            <td>
                <%=(temp1.get(i).getMark())%>
            </td>
            <td>
                <%
                    if (i == 0) {
                        out.print(Utils.calculatePass(temp1));
                    }
                %>
            </td>
        </tr>
        <% } %>

        <%
            List<StudentBean> temp2 = Utils.filterStudentsByDepartment(students, "Dep 2");
            for (int i = 0; i < temp2.size(); i++) {
        %>
        <tr>
            <td>
                <%
                    if (i == 0) {
                        out.print(temp2.get(i).getDepartment());
                    }
                %>
            </td>
            <td>
                <%=(temp2.get(i).getStudentId())%>
            </td>
            <td>
                <%=(temp2.get(i).getMark())%>
            </td>
            <td>
                <%
                    if (i == 0) {
                        out.print(Utils.calculatePass(temp2));
                    }
                %>
            </td>
        </tr>
        <% } %>

        <%
            List<StudentBean> temp3 = Utils.filterStudentsByDepartment(students, "Dep 3");
            for (int i = 0; i < temp3.size(); i++) {
        %>
        <tr>
            <td>
                <%
                    if (i == 0) {
                        out.print(temp3.get(i).getDepartment());
                    }
                %>
            </td>
            <td>
                <%=(temp3.get(i).getStudentId())%>
            </td>
            <td>
                <%=(temp3.get(i).getMark())%>
            </td>
            <td>
                <%
                    if (i == 0) {
                        out.print(Utils.calculatePass(temp3));
                    }
                %>
            </td>
        </tr>
        <% } %>

        <% } %>
    </table>
</div>
</body>
</html>