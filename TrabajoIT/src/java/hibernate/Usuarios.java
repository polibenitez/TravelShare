package hibernate;
// Generated 27-may-2014 21:52:51 by Hibernate Tools 3.6.0



/**
 * Usuarios generated by hbm2java
 */
public class Usuarios  implements java.io.Serializable {


     private String nick;
     private String nombre;
     private String apellidos;
     private String email;
     private String pass;
     private String tipo;
     private String sexo;

    public Usuarios() {
    }

    public Usuarios(String nick, String nombre, String apellidos, String email, String pass, String tipo, String sexo) {
       this.nick = nick;
       this.nombre = nombre;
       this.apellidos = apellidos;
       this.email = email;
       this.pass = pass;
       this.tipo = tipo;
       this.sexo = sexo;
    }
   
    public String getNick() {
        return this.nick;
    }
    
    public void setNick(String nick) {
        this.nick = nick;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getSexo() {
        return this.sexo;
    }
    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }




}

