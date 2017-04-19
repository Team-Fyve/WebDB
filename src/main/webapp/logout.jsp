<html>
    <%
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("Index.jsp");
    %>
</html> 