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
            List<StudentBean> temp = students.stream().filter((student) -> student.getDepartment().equals("Dep 1")).toList();

            for (int i = 0; i < 4; i++) {
        %>
        <tr>
            <td rowspan="1">
                <%=(temp.get(i).getDepartment())%>
            </td>
            <td>
                <%=(temp.get(i).getStudentId())%>
            </td>
            <td>
                <%=(temp.get(i).getMark())%>
            </td>
            <td>
                <%=Utils.calculatePass(temp, "Dep 1")%>
            </td>
        </tr>
        <% } %>
        <% } %>
    </table>
</div>
</body>
</html>