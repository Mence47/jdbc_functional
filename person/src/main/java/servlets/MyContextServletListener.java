package servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyContextServletListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Application has started!");
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application has stoped working!");
    }
}