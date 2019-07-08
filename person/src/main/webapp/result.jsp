<%@ page contentType = "text/html;charset=utf-8" %> <!--- response.setContentType("charset="utf-8""); --->
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.servlet.*" %>
<html>
    <head>
        <title>Result page</title>
    </head>
    <body>
        <%   
            String first = (String)session.getAttribute("name"); 
            String last = (String)session.getAttribute("lastname"); 
            String middle = request.getParameter("thirdname");

            ServletContext sc = session.getServletContext();
            Connection conn = (Connection)sc.getAttribute("connect");
            Statement stmt = conn.createStatement();
            String sql = "INSERT INTO PEOPLE (FIRST,LAST,MIDDLE) " +
            "VALUES (\'"+first+"'"+","+"'"+last+"'"+","+"'"+middle+"'"+");";
            stmt.executeUpdate(sql);
            stmt.close();
            //out.println(sql);
            //out.println(conn);
         %>
        <p>Hello <%= last%> 
            <%= first %> 
            <%= middle %> </p>
            <% session.invalidate(); %>
        <form action="index.html">
            <input type="submit" value="Return to main page" />
        </form>
        <form action="print_base.jsp">
            <input type="submit" value="Print data base" />
        </form>    
    </body>
</html>