package servlets;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class MyServletRequestListener implements ServletRequestListener {

    public void requestDestroyed(ServletRequestEvent sre) {

        ServletRequest servletRequest =  sre.getServletRequest();

        System.out.println("ServletRequest destroyed. Remote IP="
            + servletRequest.getRemoteAddr());
    }

    public void requestInitialized(ServletRequestEvent sre) {

        ServletRequest servletRequest = sre.getServletRequest();

        System.out.println("ServletRequest initialized. Remote IP="
            + servletRequest.getRemoteAddr());
    }
}