/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.CiudadesDao;
import dao.PublicacionesDao;
import hibernate.Ciudades;
import hibernate.Publicaciones;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author francisco
 */
public class InicioAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String BUSCAR = "buscar";

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
        if (request.getParameter("buscar") != null) {
            if (request.getParameter("ciudad").trim().equals("") && request.getParameter("universidad").trim().equals("") && request.getParameter("fecha").trim().equals("")) {
                ActionErrors errors = new ActionErrors();
                errors.add("faltaV", new ActionMessage("errors.viajesVacio"));
                saveErrors(request, errors);
                return mapping.findForward(SUCCESS);
            } else if (!request.getParameter("ciudad").equals("") && request.getParameter("universidad").trim().equals("") && request.getParameter("fecha").trim().equals("")) {
                String universidad = "%";
                List <Publicaciones> p = publicacionesDao.getList(request.getParameter("ciudad"), universidad);
                if(p!=null){
                   request.setAttribute("lista", p);
                    return mapping.findForward(BUSCAR); 
                }else{
                    return mapping.findForward(SUCCESS);
                }
            } else if (!request.getParameter("universidad").equals("") && request.getParameter("ciudad").trim().equals("") && request.getParameter("fecha").trim().equals("")) {
                String ciudad = "%";
                List <Publicaciones> p = publicacionesDao.getList(ciudad, request.getParameter("universidad"));
                if(p!=null){
                   request.setAttribute("lista", p);
                    return mapping.findForward(BUSCAR); 
                }else{
                    return mapping.findForward(SUCCESS);
                }
            } else {
                return mapping.findForward(SUCCESS);
            }
        } else {
            return mapping.findForward(SUCCESS);
        }
    }
}
