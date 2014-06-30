/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.CiudadesDao;
import hibernate.Ciudades;
import hibernate.Usuarios;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author MAMISHO
 */
public class CiudadesAction extends org.apache.struts.action.Action {

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


        CiudadesDao ciudadesDao = new CiudadesDao();
        Ciudades ciudades = new Ciudades();

        if (request.getParameter("delete") != null) {
            
            ciudades = ciudadesDao.get(request.getParameter("delete"));
            ciudadesDao.delete(ciudades);
            
        } else if (request.getParameter("save") != null) {
            
            ciudades.setNombre((((CiudadesActionForm) form).getNombre().toLowerCase()));
            ciudadesDao.create(ciudades);
        }

        List<Ciudades> v = ciudadesDao.getList();
        if (v == null) {
            v = new ArrayList<Ciudades>();
        }
        request.setAttribute("lista", v);
        return mapping.findForward(SUCCESS);
    }
}
