<%@ page contentType = "text/html;charset=utf-8" %> <!--- response.setContentType("charset="utf-8""); --->
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.servlet.*" %>
<html>
    <head>
        <title>Result page</title>
    </head>
    <body>
        <%  int id = 1; 
            String first = (String)session.getAttribute("name"); 
            String last = (String)session.getAttribute("lastname"); 
            String middle = request.getParameter("thirdname");
            ServletContext sc = session.getServletContext();
            Connection conn = (Connection)sc.getAttribute("connect");
            Statement stmt = conn.createStatement();
            String sql = "INSERT INTO PEOPLE ("+id+","+first+","+last+","+middle+");";
            //ResultSet rs = stmt.executeQuery(sql);
            out.println(sql);
         %>
        <p>Hello <%= last%> 
            <%= first %> 
            <%= middle %> </p>
            <% session.invalidate(); %>
    </body>
</html>