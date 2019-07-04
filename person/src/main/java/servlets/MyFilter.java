package servlets;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import java.io.IOException;

public class MyFilter implements Filter {

    private FilterConfig fc;

    public void doFilter(ServletRequest request,
                        ServletResponse response,
                        FilterChain chain) 
                        throws IOException, ServletException {
        System.out.println("filtering request before result.jsp");
        chain.doFilter(request, response);
    }

    public void init(FilterConfig fc) {
        this.fc = fc;
    }

    public void destroy() {

    }
}