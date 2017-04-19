<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyve",
            "mtb29", "mucis");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into users(fname, lname, email, username, password, register_date) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("Sign_Up.jsp");
    }
%>