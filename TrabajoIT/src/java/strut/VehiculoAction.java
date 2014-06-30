/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package strut;

import dao.VehiculosDao;
import hibernate.Usuarios;
import hibernate.Vehiculo;
import java.util.ArrayList;
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
public class VehiculoAction extends org.apache.struts.action.Action {

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
        VehiculosDao vehiculosDao = new VehiculosDao();
        Vehiculo vehiculo = new Vehiculo();
        
        Usuarios u = (Usuarios) request.getSession().getAttribute("USER");
        
        
        if (request.getParameter("save") != null) {
            vehiculo.setNick(u.getNick());
            
            vehiculo.setMarca(((VehiculoActionForm) form).getMarca());
            vehiculo.setModelo(((VehiculoActionForm) form).getModelo());
            vehiculo.setDescripcion(((VehiculoActionForm) form).getDescripcion());
            
            vehiculosDao.create(vehiculo);
        } else if (request.getParameter("delete") != null) {
            vehiculo = vehiculosDao.getBorrar(Integer.parseInt(request.getParameter("delete")));
            vehiculosDao.delete(vehiculo);
        } else if (request.getParameter("update") != null) {
            
            
            vehiculo.setNick(((VehiculoActionForm) form).getNick());
            vehiculo.setMarca(((VehiculoActionForm) form).getMarca());
            vehiculo.setModelo(((VehiculoActionForm) form).getModelo());
            vehiculo.setDescripcion(((VehiculoActionForm) form).getDescripcion());
            
            vehiculosDao.update(vehiculo);
        }
        
        List<Vehiculo> v = vehiculosDao.getListUser(u.getNick());
        if (v == null) {
            v = new ArrayList<Vehiculo>();
        }
        request.setAttribute("lista", v);
        return mapping.findForward(SUCCESS);
    }
}
