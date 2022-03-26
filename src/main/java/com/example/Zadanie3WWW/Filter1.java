package com.example.Zadanie3WWW;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;

@WebFilter(filterName = "com.example.Zadanie3WWW.Filter1", urlPatterns = {"/*"})
public class Filter1 implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    int countCalls = 0;
    int countZasob1 = 0;
    int countZasob2 = 0;
    int countZasob3 = 0;
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        countCalls++;
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        if (httpRequest.getServletPath().equals("/zasob1.jsp")){
            System.out.println("Zasob111");
            countZasob1++;
        }else if(httpRequest.getServletPath().equals("/zasob2.jsp")){
            countZasob2++;
        }else if(httpRequest.getServletPath().equals("/zasob3.jsp")){
            countZasob3++;
        }
        request.setAttribute("countCalls", countCalls);
        request.setAttribute("countZasob1", countZasob1);
        request.setAttribute("countZasob2", countZasob2);
        request.setAttribute("countZasob3", countZasob3);
        chain.doFilter(request, response);
    }
}
