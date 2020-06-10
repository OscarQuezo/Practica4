
package com.emergentes.modelo;


public class blog {
    private int id;
    private String fecha_publicacion;
    private String titulo_articulo;
    private String desarrollo_articulo;
    private String usuario;
    
    public blog(){
        this.id=0;
        this.fecha_publicacion="";
        this.titulo_articulo="";
        this.desarrollo_articulo="";
        this.usuario="";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(String fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public String getTitulo_articulo() {
        return titulo_articulo;
    }

    public void setTitulo_articulo(String titulo_articulo) {
        this.titulo_articulo = titulo_articulo;
    }

    public String getDesarrollo_articulo() {
        return desarrollo_articulo;
    }

    public void setDesarrollo_articulo(String desarrollo_articulo) {
        this.desarrollo_articulo = desarrollo_articulo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
}
