<%@ page contentType = "text/html;charset=utf-8" %>
<html>
    <head>
        <title>second name</title>
        <meta charset="utf-8">
    </head>
<body>
    <% session.setAttribute("name", request.getParameter("firstname")); %>
    <form action="thirdname.jsp">
        <fieldset>
            <legend>Введите фамилию:</legend>
            <input type="text" name="secondname"><br>
            <input type="submit" value="Submit">
        </fieldset>
    </form>

</body>
</html>