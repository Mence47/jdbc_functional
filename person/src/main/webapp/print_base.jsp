<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>DATA BASE</title>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "org.h2.Driver"
            url = "jdbc:h2:tcp://localhost/~/test"
            user = "sa" password = "sa" />

        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from people;
        </sql:query>

        <table border = "1" width = "100%">
            <tr>
                <th>ID</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Middle name</th>
            </tr>

            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td><c:out value = "${row.id}"/></td>
                    <td><c:out value = "${row.first}"/></td>
                    <td><c:out value = "${row.last}"/></td>
                    <td><c:out value = "${row.middle}"/></td>
                </tr>
            </c:forEach>
        </table>

        <form action="index.html">
            <input type="submit" value="Go to main page"/>
        </form>
        <form action="delete_last.jsp">
            <input type="submit" value="Delete last row" />
        </form>
    </body>
</html>