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
 * @author francisco
 */
public class InicioActionForm extends org.apache.struts.action.ActionForm {
    
    private String ciudad;
    
    private String universidad;
    
    private String fecha;

    /**
     * @return
     */
    public String getCiudad() {
        return ciudad;
    }

    /**
     * @param string
     */
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    /**
     * @return
     */
    public String getUniversidad() {
        return universidad;
    }

    /**
     * @param i
     */
    public void setUniversidad(String universidad) {
        this.universidad = universidad;
    }

    
    public String getFecha(){
        return fecha;
    }
    
    public void setFecha(String fecha){
        this.fecha = fecha;
    }
            
            
    /**
     *
     */
    public InicioActionForm() {
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
        
        return errors;
    }
}
