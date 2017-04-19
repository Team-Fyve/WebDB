<html>
    <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    You are not logged in<br/>
    <a href="Sign_In.jsp">Please Login</a>
    <%} else {
    %>
    Welcome <%=session.getAttribute("userid")%>
    <a href='logout.jsp'>Log out</a>
    <%
        }
    %>
</html>
