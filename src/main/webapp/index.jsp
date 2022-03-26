<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Start" %>
</h1>
<br/>

<p><a> Wszystkie wywołania: <%= request.getAttribute("countCalls")%></a></p>

<%
    PrintWriter out1 = response.getWriter();
    if( (int)request.getAttribute("countZasob1") > (int)request.getAttribute("countZasob2") &&
        (int)request.getAttribute("countZasob1") > (int)request.getAttribute("countZasob3")) {
        out1.println("<p><a href=\"zasob1.jsp\">Hello - zasób 1 -- Ilość wywołań: </a>" + request.getAttribute("countZasob1") + "</p>");
        if ((int) request.getAttribute("countZasob2") > (int) request.getAttribute("countZasob3")) {
            out1.println("<p><a href=\"zasob2.jsp\">Hello - zasób 2 -- Ilość wywołań: </a>" + request.getAttribute("countZasob2") + "</p>");
            out1.println("<p><a href=\"zasob3.jsp\">Hello - zasób 3 -- Ilość wywołań: </a>" + request.getAttribute("countZasob3") + "</p>");
        } else {
            out1.println("<p><a href=\"zasob3.jsp\">Hello - zasób 3 -- Ilość wywołań: </a>" + request.getAttribute("countZasob3") + "</p>");
            out1.println("<p><a href=\"zasob2.jsp\">Hello - zasób 2 -- Ilość wywołań: </a>" + request.getAttribute("countZasob2") + "</p>");
        }
    }

    if( (int)request.getAttribute("countZasob2") > (int)request.getAttribute("countZasob1") &&
            (int)request.getAttribute("countZasob2") > (int)request.getAttribute("countZasob3")) {
        out1.println("<p><a href=\"zasob2.jsp\">Hello - zasób 2 -- Ilość wywołań: </a>" + request.getAttribute("countZasob2") + "</p>");
        if ((int) request.getAttribute("countZasob1") > (int) request.getAttribute("countZasob3")) {
            out1.println("<p><a href=\"zasob1.jsp\">Hello - zasób 1 -- Ilość wywołań: </a>" + request.getAttribute("countZasob1") + "</p>");
            out1.println("<p><a href=\"zasob3.jsp\">Hello - zasób 3 -- Ilość wywołań: </a>" + request.getAttribute("countZasob3") + "</p>");
        } else {
            out1.println("<p><a href=\"zasob3.jsp\">Hello - zasób 3 -- Ilość wywołań: </a>" + request.getAttribute("countZasob3") + "</p>");
            out1.println("<p><a href=\"zasob1.jsp\">Hello - zasób 1 -- Ilość wywołań: </a>" + request.getAttribute("countZasob1") + "</p>");
        }
    }

    if( (int)request.getAttribute("countZasob3") > (int)request.getAttribute("countZasob1") &&
            (int)request.getAttribute("countZasob3") > (int)request.getAttribute("countZasob2")) {
        out1.println("<p><a href=\"zasob3.jsp\">Hello - zasób 3 -- Ilość wywołań: </a>" + request.getAttribute("countZasob3") + "</p>");
        if ((int) request.getAttribute("countZasob1") > (int) request.getAttribute("countZasob2")) {
            out1.println("<p><a href=\"zasob1.jsp\">Hello - zasób 1 -- Ilość wywołań: </a>" + request.getAttribute("countZasob1") + "</p>");
            out1.println("<p><a href=\"zasob2.jsp\">Hello - zasób 2 -- Ilość wywołań: </a>" + request.getAttribute("countZasob2") + "</p>");
        } else {
            out1.println("<p><a href=\"zasob2.jsp\">Hello - zasób 2 -- Ilość wywołań: </a>" + request.getAttribute("countZasob2") + "</p>");
            out1.println("<p><a href=\"zasob1.jsp\">Hello - zasób 1 -- Ilość wywołań: </a>" + request.getAttribute("countZasob1") + "</p>");
        }
    }
%>
<p><a href="zasob1.jsp">Hello - zasób 1 -- Ilość wywołań: </a><%= request.getAttribute("countZasob1")%></p>
<p><a href="zasob2.jsp">Hello - zasób 2 --  Ilość wywołań: </a><%= request.getAttribute("countZasob2")%></p>
<p><a href="zasob3.jsp">Hello - zasób 3 -- Ilość wywołań: </a><%= request.getAttribute("countZasob3")%></p>
</body>
</html>