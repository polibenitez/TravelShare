/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package strut;
import dao.*;
import hibernate.Usuarios;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author manolo
 */
public class CheckLoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String ADMIN = "admin";
    private static final String USER = "user";
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
        UsuariosDao dao=new UsuariosDao();
        
        String nick=((CheckLoginActionForm)form).getNick();
        String clave=((CheckLoginActionForm)form).getPass();
        
        Usuarios usuario=dao.get(nick);
        if(usuario.getPass().equals(clave)){
            HttpSession sesion_actual=request.getSession(true);
            sesion_actual.setAttribute("USER", usuario);
            if(usuario.getTipo().equals("admin")){
                return mapping.findForward(ADMIN);
            } else {
                return mapping.findForward(USER);
            }
    }else{
            return mapping.findForward(FAILURE);
        }
        
    }
}
