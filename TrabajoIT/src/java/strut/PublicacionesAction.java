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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author francisco
 */
public class PublicacionesAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        PublicacionesDao publicacionesDao = new PublicacionesDao();
        Publicaciones publicaciones = new Publicaciones();
        
        UniversidadesDao universidadesDao = new UniversidadesDao();
        Universidades universidades = new Universidades();
        
        CiudadesDao ciudadesDao = new CiudadesDao();
        Ciudades ciudades = new Ciudades();

        // request.getSession().getAttribute("");
        Usuarios u = (Usuarios) request.getSession().getAttribute("USER");
        String save=request.getParameter("save");
        if (request.getParameter("save") != null && request.getParameter("save").equals("Anadir")) {

            publicaciones.setNick(u.getNick());

            String fecha = ((PublicacionesActionForm) form).getFecha();
            SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            Date d = s.parse(fecha);
                      
            publicaciones.setIdVehiculo(((PublicacionesActionForm) form).getIdVehiculo());
            publicaciones.setNombreCiudad(((PublicacionesActionForm) form).getNombreCiudad());
            publicaciones.setNombreUniversidad(((PublicacionesActionForm) form).getNombreUniversidad());
            publicaciones.setHora(((PublicacionesActionForm) form).getHora());
            publicaciones.setDescripcion(((PublicacionesActionForm) form).getDescripcion());
            publicaciones.setFecha(d);

            publicacionesDao.create(publicaciones);

        } else if (request.getParameter("delete") != null) {
            publicaciones = publicacionesDao.getBorrar(Integer.parseInt(request.getParameter("delete")));
            publicacionesDao.delete(publicaciones);
        } else if (request.getParameter("update") != null) {
            publicaciones=publicacionesDao.obtenerPublicacion(Integer.parseInt(request.getParameter("update")));
            publicaciones.setNick(u.getNick());
            String fecha = ((PublicacionesActionForm) form).getFecha();
            SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            Date d = s.parse(fecha);
            publicaciones.setIdVehiculo(((PublicacionesActionForm) form).getIdVehiculo());
            publicaciones.setNombreCiudad(((PublicacionesActionForm) form).getNombreCiudad());
            publicaciones.setNombreUniversidad(((PublicacionesActionForm) form).getNombreUniversidad());
            publicaciones.setHora(((PublicacionesActionForm) form).getHora());
            publicaciones.setDescripcion(((PublicacionesActionForm) form).getDescripcion());
            publicaciones.setFecha(d);

            publicacionesDao.update(publicaciones);
        }
        
        List<Publicaciones> p = publicacionesDao.getListUser(u.getNick());
        if (p == null) {
            p = new ArrayList<Publicaciones>();
        }
        
        request.setAttribute("lista", p);
        
        
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
        
        
        return mapping.findForward(SUCCESS);
    }
}
