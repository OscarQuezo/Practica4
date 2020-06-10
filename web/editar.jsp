<%
    
    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
 %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
            ResultSet rs = null;
            int id = Integer.parseInt(request.getParameter("id"));
            
            sql = "select * from blog where id =" + id;
            ps = conn.prepareStatement(sql);
            //en rs esta todos los datos del selct
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        
        <div>
            <h1>modificar registro</h1>
            <hr>
            <form action="" method="post">
                <p> Usuario: ${sessionScope.Usuario}</p> 
                
                <tr>
                    <td>Id</td>
                    <td><input type="text" readonly="" value="<%= rs.getInt("id") %>"></td>
                </tr><br><br>

                <tr>
                    <td>Fecha publicacion</td>
                    <td><input type="text" name="txtfecha_publicacion"value="<%= rs.getString("fecha_publicacion") %>" ></td>
                </tr><br><br>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="txttitulo_articulo" value="<%= rs.getString("titulo_articulo") %>"></td>
                </tr>
                <tr><br>
                    <td>Desarrollo articulo</td>
                    
                <td><input type="text" name="txtdesarrollo_articulo" value="<%= rs.getString("desarrollo_articulo") %>" ></td>
                </tr>
                <tr> <br><br>
                <tr><br>
                    <td>Usuario</td>
                    <td><input type="text" name="txtusuario" readonly="" value="${sessionScope.Usuario}" ></td>
                </tr><br><br>
                <input type="submit" value="Guardar">
                <br>
                <a href="panel.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
        
        
  </body>
</html> 
<%
    String fecha, titulo, desarrollo, Ussuario;
    fecha = request.getParameter("txtfecha_publicacion");
    titulo = request.getParameter("txttitulo_articulo");
    desarrollo = request.getParameter("txtdesarrollo_articulo");
    Ussuario = request.getParameter("txtusuario");
    if (fecha != null && titulo != null && desarrollo != null) {
        ps = conn.prepareStatement("update blog set fecha_publicacion='" + fecha + "', titulo_articulo='"+titulo+"', desarrollo_articulo='"+desarrollo+"', usuario='"+Ussuario+"' where id="+id);
    ps.executeUpdate();
    response.sendRedirect("panel.jsp");
    }
%>