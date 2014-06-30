/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.UsuariosDao;
import hibernate.Usuarios;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author francisco
 */
public class UsuariosActionForm extends org.apache.struts.action.ActionForm {

    private String nick;
    private String nombre;
    private String apellidos;
    private String email;
    private String pass;
    private String repass;
    private String tipo;
    private String sexo;

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRepass() {
        return repass;
    }

    public void setRepass(String repass) {
        this.repass = repass;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     *
     */
    public UsuariosActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        UsuariosDao usuariosDao = new UsuariosDao();
        List<Usuarios> v = usuariosDao.getList();
        if (getPass() != null && getPass().trim().length() < 4) {

            if (v == null) {
                v = new ArrayList<Usuarios>();
            }
            request.setAttribute("lista", v);
            errors.add("passCort", new ActionMessage("errors.passCort"));
        }

        Iterator<Usuarios> it = v.iterator();
        while(it.hasNext()){
            if(it.next().getNick().equals(getNick())){
                if (v == null) {
                v = new ArrayList<Usuarios>();
            }
            request.setAttribute("lista", v);
            errors.add("login", new ActionMessage("errors.login"));
            }
        }
        
        if((getNick()!=null && getNick().trim().equals("")) || (getNombre()!=null && getNombre().trim().equals("")) || (getApellidos()!=null && getApellidos().trim().equals(""))){
            if (v == null) {
                v = new ArrayList<Usuarios>();
            }
            request.setAttribute("lista", v);
            errors.add("falta", new ActionMessage("errors.falta"));
        }
        
        String sexo1="hombre";
        String sexo2="mujer";
        if (getSexo() != null && (!sexo1.equalsIgnoreCase(getSexo()) && !sexo2.equalsIgnoreCase(getSexo()))) {
            if (v == null) {
                v = new ArrayList<Usuarios>();
            }
            request.setAttribute("lista", v);
            errors.add("sexo", new ActionMessage("errors.sexo"));
        }

        String tipo1="admin";
        String tipo2="normal";
        if (getTipo() != null && (!tipo1.equalsIgnoreCase(getTipo()) && !tipo2.equalsIgnoreCase(getTipo()))) {
            if (v == null) {
                v = new ArrayList<Usuarios>();
            }
            request.setAttribute("lista", v);
            errors.add("tipo", new ActionMessage("errors.tipo"));
        }

        
        return errors;
    }
}
