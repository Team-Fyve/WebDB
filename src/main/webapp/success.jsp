<html>
    <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
    <p>You are not logged in<br/></p>
    <br/>
    <p><a href="Sign_In.jsp">Please Login</a></p>
    <%} else {
    %>
    <p>Welcome <%=session.getAttribute("userid")%></p>
    <br/>
    <a href="Index.html">Return to Homepage</a>
    <br/>
    <a href='logout.jsp'>Log out</a>
    <%
        }
    %>
</html>
