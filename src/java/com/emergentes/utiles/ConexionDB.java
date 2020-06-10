
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    static String driver ="com.mysql.jdbc.Driver";
    static String url ="jdbc:mysql://localhost:3306/bd_articulo";
    static String usuario ="root";
    static String password = "";
    
    public Connection conn = null;
    
public ConexionDB(){
    try{
        Class.forName(driver);
        conn = DriverManager.getConnection(url, usuario, password);
        
        if(conn != null){
            System.out.println("Conexion OK");
        }
    } catch (ClassNotFoundException e){
        System.out.println("falta especificar driver "+e.getMessage());
    } catch (SQLException e){
        System.out.println("Error al abrir la base de datos"+e.getMessage());
    }
}
public Connection conectar(){
    return conn;
}
public void desconectar(){
       try {
            conn.close();
        } catch (SQLException ex) {
           System.out.println("error al cerrar la base de datos"+ex.getMessage());
       }
}
    
}
    
