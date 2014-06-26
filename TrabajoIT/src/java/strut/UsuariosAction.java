/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.UsuariosDao;
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
 * @author francisco
 */
public class UsuariosAction extends org.apache.struts.action.Action {

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
        UsuariosDao usuariosDao = new UsuariosDao();
        Usuarios usuarios = new Usuarios();

        //Usuarios u = (Usuarios) request.getSession().getAttribute("USER");
        if (request.getParameter("delete") != null) {
            usuarios = usuariosDao.get(request.getParameter("delete"));
            usuariosDao.delete(usuarios);
        } else if (request.getParameter("save") != null) {
            usuarios.setNick(((UsuariosActionForm) form).getNick());
            usuarios.setNombre(((UsuariosActionForm) form).getNombre());
            usuarios.setApellidos(((UsuariosActionForm) form).getApellidos());
            usuarios.setEmail(((UsuariosActionForm) form).getEmail());
            usuarios.setPass(((UsuariosActionForm) form).getPass());
            usuarios.setTipo(((UsuariosActionForm) form).getTipo());
            usuarios.setSexo(((UsuariosActionForm) form).getSexo());
            
        }
        List<Usuarios> v = usuariosDao.getList();
        if (v == null) {
            v = new ArrayList<Usuarios>();
        }
        request.setAttribute("lista", v);
        return mapping.findForward(SUCCESS);
    }
}
