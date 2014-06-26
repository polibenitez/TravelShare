/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.PublicacionesDao;
import hibernate.Publicaciones;
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

        // request.getSession().getAttribute("");
        Usuarios u = (Usuarios) request.getSession().getAttribute("USER");

        if (request.getParameter("save") != null && request.getParameter("save").equals("Añadir")) {

            publicaciones.setNick(u.getNick());
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//            Date convertedCurrentDate = sdf.parse("2013-09-18");

            String fecha = request.getParameter("fecha");
            SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date d = s.parse(fecha);

//            SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
//            Date fecha = formatoFecha.parse("2013-01-01");
//            java.sql.Date sqlDate1 = new java.sql.Date(fecha.getTime());
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

        }
        
        List<Publicaciones> p = publicacionesDao.getListUser(u.getNick());
        if (p == null) {
            p = new ArrayList<Publicaciones>();
        }
        
        request.setAttribute("lista", p);
        return mapping.findForward(SUCCESS);
    }
}
