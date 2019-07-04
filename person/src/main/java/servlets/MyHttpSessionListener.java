package servlets;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class MyHttpSessionListener implements HttpSessionListener {

    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("Session created, ID=" + se.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("Session destroyed, ID=" + se.getSession().getId());
    }
}