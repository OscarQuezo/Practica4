<%
    
    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
 %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar registro</h1>
            <hr>
            <form action="" method="post">

                <tr>
                    <td>Fecha de publicacion</td>
                    <td><input type="text" name="txtfecha_publicacion" ></td>
                </tr><br><br>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="txttitulo_articulo" ></td>
                </tr><br><br>
                <tr>
                    <td>Desarrollo del articulo</td>
                    <td><input type="text" name="txtdesarrollo_articulo" ></td>
                   
                </tr><br><br>
                <td>Usuario</td>
                <td><input type="text" name="txtusuario" readonly="" value="${sessionScope.Usuario}"></td>
                </tr><br><br>
                <input type="submit" value="Guardar"><br><br>
                <a href="panel.jsp">Regresar</a>
            </form>
        </div>

    </body>
</html>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/bd_articulo";
    String usuario = "root";
    String password = "";
    Class.forName(driver);
    Connection conn = null;
    conn = DriverManager.getConnection(url, usuario, password);

    PreparedStatement ps;

    //en rs esta todos los datos del selct
    String fecha, titulo, desarrollo, Usuario;
    fecha = request.getParameter("txtfecha_publicacion");
    titulo = request.getParameter("txttitulo_articulo");
    desarrollo = request.getParameter("txtdesarrollo_articulo");
    Usuario = request.getParameter("txtusuario");
    if (fecha != null && titulo != null && desarrollo != null) {
        ps = conn.prepareStatement("insert into blog(fecha_publicacion, titulo_articulo, desarrollo_articulo, usuario) values('" + fecha + "','" + titulo + "','" + desarrollo + "','" + Usuario + "')");
        ps.executeUpdate();
        response.sendRedirect("panel.jsp");
    }

%>