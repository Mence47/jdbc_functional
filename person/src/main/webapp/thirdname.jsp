<%@ page contentType = "text/html;charset=utf-8" %>
<html>
    <head>
        <title>third name</title>
        <meta charset="utf-8">
    </head>
<body>
    <% session.setAttribute("lastname", request.getParameter("secondname")); %>
    <form action="result.jsp">
        <fieldset>
            <legend>Введите отчество:</legend>
            <input type="text" name="thirdname"><br>
            <input type="submit" value="Submit">
        </fieldset>
    </form>

</body>
</html>