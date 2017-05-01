<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Red Forest</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="About_Us.html" target="_blank">Team Fyve</a></div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Index.html">Home<span class="sr-only">(current)</span></a> </li>
        <li><a href="Updates.html">Updates<span class="sr-only">(current)</span></a> </li>
      </ul>
      <ul class="nav navbar-nav">
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Account<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="Sign_In.jsp">Sign In</a></li>
            <li><a href="Profile.jsp">Profile</a></li>
            <li class="divider"></li>
            <li><a href="Sign_Up.jsp">Sign Up</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyve",
            "mtb29", "mucis");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("Profile.jsp");
    } else {
        out.println("Invalid password <a href='Sign_In.jsp'>try again</a>.");
    }
%>
<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright © Team Fyve. All rights reserved. This website is for a class project.</p>
      </div>
    </div>
  </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery-1.11.2.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.min.js"></script>
</body>
</html>
