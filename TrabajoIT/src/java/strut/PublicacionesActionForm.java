/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package strut;

import dao.CiudadesDao;
import dao.PublicacionesDao;
import dao.UniversidadesDao;
import hibernate.Ciudades;
import hibernate.Publicaciones;
import hibernate.Universidades;
import hibernate.Usuarios;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author francisco
 */
public class PublicacionesActionForm extends org.apache.struts.action.ActionForm {
    
     private Integer idPublicacion;
     private String nick;
     private int idVehiculo;
     private String nombreCiudad;
     private String nombreUniversidad;
     private String descripcion;
     private String fecha;
     private String hora;

    public Integer getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(Integer idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public int getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String getNombreCiudad() {
        return nombreCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }

    public String getNombreUniversidad() {
        return nombreUniversidad;
    }

    public void setNombreUniversidad(String nombreUniversidad) {
        this.nombreUniversidad = nombreUniversidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    

    /**
     *
     */
    public PublicacionesActionForm() {
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
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        PublicacionesDao publicacionesDao = new PublicacionesDao();
        Publicaciones publicaciones = new Publicaciones();
         Usuarios u = (Usuarios) request.getSession().getAttribute("USER");
         List<Publicaciones> v = publicacionesDao.getListUser(u.getNick());
         UniversidadesDao universidadesDao = new UniversidadesDao();
        Universidades universidades = new Universidades();
        
        CiudadesDao ciudadesDao = new CiudadesDao();
        Ciudades ciudades = new Ciudades();
         
         if((getNombreCiudad()!=null && getNombreCiudad().trim().equals("")) || (getNombreUniversidad()!=null && getNombreUniversidad().trim().equals("")) || (getFecha()!=null && getFecha().trim().equals(""))|| (getHora()!=null && getHora().trim().equals(""))){
             
         if (v == null) {
             v = new ArrayList<Publicaciones>();
         }
         request.setAttribute("lista", v);
             errors.add("falta", new ActionMessage("errors.falta"));
         }
         List<Ciudades> v2 = ciudadesDao.getList();
        if (v2 == null) {
            v2 = new ArrayList<Ciudades>();
        }
        request.setAttribute("lista2", v2);
        
        
         List<Universidades> v3 = universidadesDao.getList();
        if (v3 == null) {
            v3= new ArrayList<Universidades>();
        }
        request.setAttribute("lista3", v3);
        return errors;
    }
}
