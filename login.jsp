<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyve",
            "mtb29", "mucis");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='Sign_In.jsp'>try again</a>");
    }
%>