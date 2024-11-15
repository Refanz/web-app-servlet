<%@ page
        contentType="text/html;charset=UTF-8"
        language="java"
%>
<html>
<head>
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>
<form id="formLogin" action="AppServlet" method="post">
    <div>
        <label>User ID</label>
        <input type="text" name="userId">
    </div>
    <div>
        <label>Password</label>
        <input type="password" name="password">
    </div>
    <button id="btn-submit">Login</button>
</form>
<script src="https://code.jquery.com/jquery-3.7.1.slim.js"
        integrity="sha256-UgvvN8vBkgO0luPSUl2s8TIlOSYRoGFAX4jlCIm9Adc=" crossorigin="anonymous"></script>
<script>
    function submitForm(event) {
        event.preventDefault();

        const userId = $("input[name=userId]").val();
        const password = $("input[name=password]").val();

        console.log(userId);
        console.log(password);

        $("#formLogin").submit();
    }

    $("#btn-submit").click((event) => submitForm(event));
</script>
</body>
</html>
