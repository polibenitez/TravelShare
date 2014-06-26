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

        Ciudades ciudad = new Ciudades();

        request.setAttribute("lista", dao.getList());
        Usuarios u = (Usuarios) request.getSession().getAttribute("USER");

        List<Ciudades> p = dao.getList();
        if (p == null) {
            p = new ArrayList<Ciudades>();
        }
        request.setAttribute("lista", p);

        if (request.getParameter("delete") != null) {
            ciudad = dao.get(request.getParameter("delete"));
            dao.delete(ciudad);
        } else if (request.getParameter("update") != null) {

//            String fechaEntrada = request.getParameter("fechaEntrada");
//            String fechaSalida = request.getParameter("fechaSalida");
//            if (fechaSalida.equals("")) {
//                fechaSalida = "-";
//            }
            ciudad = dao.get(request.getParameter("update"));

            //ciudad = cv.obtenerVehiculo(request.getParameter("update"));
            ciudad.setNombre(request.getParameter("nombre"));
            //ciudad.setIdCiudad(Integer.parseInt(request.getParameter("id")));

            dao.update(ciudad);

        } else if (request.getParameter("save") != null) {

            ciudad.setNombre(request.getParameter("nombre"));

            dao.create(ciudad);
        }
        //return mapping.findForward(ADMINVIEW);
        return mapping.findForward(SUCCESS);
    }
}
