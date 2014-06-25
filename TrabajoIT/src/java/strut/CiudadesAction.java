/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.CiudadesDao;
import hibernate.Ciudades;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author manolo
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
        CiudadesDao dao = new CiudadesDao();
        Ciudades user = new Ciudades();
        request.setAttribute("lista", dao.getList());
        if (request.getParameter("delete") != null) {
            user = dao.get(request.getParameter("delete"));
            dao.delete(user);
        } else if (request.getParameter("update") != null) {

//            String fechaEntrada = request.getParameter("fechaEntrada");
//            String fechaSalida = request.getParameter("fechaSalida");
//            if (fechaSalida.equals("")) {
//                fechaSalida = "-";
//            }
            user = dao.get(request.getParameter("update"));

            //user = cv.obtenerVehiculo(request.getParameter("update"));
            user.setNombre(request.getParameter("nombre"));
            //user.setIdCiudad(Integer.parseInt(request.getParameter("id")));

            dao.update(user);

        } else if (request.getParameter("save") != null) {

            user.setNombre(request.getParameter("nombre"));

            dao.create(user);
        }
        //return mapping.findForward(ADMINVIEW);
        return mapping.findForward(SUCCESS);
    }
}
