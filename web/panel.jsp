<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Listado de articulos</h1>


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
            ResultSet rs = null;
            sql = "select * from blog";
            ps = conn.prepareStatement(sql);
            //en rs esta todos los datos del selct
            rs = ps.executeQuery();
        %>
        
        <p> Usuario: ${sessionScope.Usuario}</p> 
        <a class="btn btn-success btn-lg" href="agregar.jsp">Nuevo articulo</a>

        <table border="1">
            <tr>
                <th>Id</th>
                <th>Fecha de publicacion</th>
                <th>Titulo del articulo</th>
                <th>usuario que publico</th>
                <th>Desarrollo del articulo</th>
                
            </tr>
            <%
                while (rs.next()) {
            %>

            <tr>


                <td><%= rs.getInt("Id")%></td>
                <td><%= rs.getString("fecha_publicacion")%></td>
                <td><%= rs.getString("titulo_articulo")%></td>
                <td><%= rs.getString("usuario")%></td>
                <td><%= rs.getString("desarrollo_articulo")%></td>
               
                <td>

                    <a href="editar.jsp?id=<%= rs.getInt("Id")%>">Editar</a>
                    <a href="eliminar.jsp?id=<%= rs.getInt("Id")%>">Eliminar</a>
                    <a action="LoginControlador" method="post">
                </td>
            </tr>
            <%}%>


        </table>


        <br>
        <a href="LoginControlador?action=logout">salir x</a>


    </body>
</html>


