package servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import java.sql.*;

public class MyContextServletListener implements ServletContextListener {

    private Connection conn;

    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Application has started!");
        try {
            Class.forName("org.h2.Driver"); 
            conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "sa");
            ServletContext sc = sce.getServletContext();
            sc.setAttribute("connect", conn);
        } catch (SQLException e) {
        } catch (ClassNotFoundException e) {}
        
        if (conn != null)
            System.out.println("Connection to data base established!");
        else
            System.out.println("Cant establish connection to database");
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application has stoped working!");

        if (conn != null) {
            try {
                conn.close();
                System.out.println("Connection to data base terminated!");
            } catch (SQLException e) {}
        }
            
    }
}