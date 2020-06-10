<%
    
    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
 %>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/bd_articulo";
            String usuario = "root";
            String password = "";
            Class.forName(driver);
            String sql = "";
            Connection conn = null;
            conn = DriverManager.getConnection(url, usuario, password);
            PreparedStatement ps = null;
            
            int id = Integer.parseInt(request.getParameter("id"));
            sql = "delete from blog where id =" + id;
            ps = conn.prepareStatement(sql);
            ps.execute();
            //en rs esta todos los datos del selct
            response.sendRedirect("panel.jsp");
           
        %>
    </body>
</html>
