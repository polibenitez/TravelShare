/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package strut;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author manolo
 */
public class CheckLoginActionForm extends org.apache.struts.action.ActionForm {
    
    private String nick;
    
     private String pass;

    /**
     * @return
     */
    public String getNick() {
        return nick;
    }

    /**
     * @param string
     */
    public void setNick(String nick) {
        this.nick = nick;
    }

    /**
     * @return
     */
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     *
     */
    public CheckLoginActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getNick() == null || getNick().length() < 1) {
            errors.add("nick", new ActionMessage("error.usuario.required"));
            // TODO: add 'error.nick.required' key to your resources
        }
        if (getPass() == null || getPass().length() < 1) {
           errors.add("pass", new ActionMessage("error.clave.required"));
            // TODO: add 'error.nick.required' key to your resources
        }
        return errors;
    }
}
