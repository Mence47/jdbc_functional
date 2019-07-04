<%@ page contentType = "text/html;charset=utf-8" %> <!--- response.setContentType("charset="utf-8""); --->
<html>
    <head>
        <title>Result page</title>
    </head>
    <body>
        <p>Hello <%= (String)session.getAttribute("lastname")%> 
            <%= (String)session.getAttribute("name")%> 
            <%= request.getParameter("thirdname")%> </p>
            <% session.invalidate(); %>
    </body>
</html>