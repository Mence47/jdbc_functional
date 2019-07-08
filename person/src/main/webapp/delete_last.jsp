<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Delete row</title>>
    </head>
    <body>
        <sql:setDataSource var = "table" driver = "org.h2.Driver"
        url = "jdbc:h2:tcp://localhost/~/test"
        user = "sa" password = "sa" />
    </body>
    <sql:update dataSource = "${table}" var = "result">
        DELETE FROM PEOPLE  WHERE ID=(SELECT MAX(id) FROM PEOPLE );
    </sql:update>
    <c:redirect url="http://localhost:8080/three.pages/print_base.jsp" />
</html>