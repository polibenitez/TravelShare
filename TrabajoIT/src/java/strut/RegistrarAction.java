/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.UsuariosDao;
import hibernate.Usuarios;
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
public class RegistrarAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

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
        Usuarios usuarios = null;

        if (request.getParameter("registrar") != null) {
            if (!request.getParameter("nick").trim().equals("") && !request.getParameter("nombre").equals("") && !request.getParameter("apellidos").equals("") && !request.getParameter("email").equals("") && !request.getParameter("pass").equals("")) {
                if (request.getParameter("pass").equals(request.getParameter("repass"))) {
                    usuarios = usuariosDao.get(request.getParameter("nick"));
                    if (usuarios == null) {
                        Usuarios user = new Usuarios();
                        user.setNick(request.getParameter("nick"));
                        user.setNombre(request.getParameter("nombre"));
                        user.setApellidos(request.getParameter("apellidos"));
                        user.setEmail(request.getParameter("email"));
                        user.setPass(request.getParameter("pass"));
                        user.setTipo("normal");
                        user.setSexo(request.getParameter("sexo"));
                        usuariosDao.create(user);
                        return mapping.findForward(SUCCESS);
                    } else {
                        ActionErrors errors = new ActionErrors();
                        errors.add("nick", new ActionMessage("errors.login"));
                        saveErrors(request, errors);
                        return mapping.findForward(FAILURE);
                    }
                } else {
                    ActionErrors errors = new ActionErrors();
                    errors.add("pass", new ActionMessage("errors.pass"));
                    saveErrors(request, errors);
                    return mapping.findForward(FAILURE);
                }
            } else {
                ActionErrors errors = new ActionErrors();
                errors.add("falta", new ActionMessage("errors.falta"));
                saveErrors(request, errors);
                return mapping.findForward(FAILURE);
            }
        } else {
            return mapping.findForward(FAILURE);
        }
    }
}
