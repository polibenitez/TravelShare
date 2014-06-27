/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package strut;

import dao.UniversidadesDao;
import hibernate.Universidades;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author manolo
 */
public class UniversidadesActionForm extends org.apache.struts.action.ActionForm {
    
    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    /**
     *
     */
    public UniversidadesActionForm() {
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
        UniversidadesDao universidadesDao = new UniversidadesDao();
        List<Universidades> v = universidadesDao.getList();
        if (getNombre() != null && getNombre().trim().equals("")) {

            if (v == null) {
                v = new ArrayList<Universidades>();
            }
            request.setAttribute("lista", v);
            errors.add("universidad", new ActionMessage("errors.universidad"));
        }
        
        Iterator<Universidades> it = v.iterator();
        while(it.hasNext()){
            if(it.next().getNombre().equalsIgnoreCase(getNombre())){
                if (v == null) {
                v = new ArrayList<Universidades>();
            }
            request.setAttribute("lista", v);
            errors.add("exist", new ActionMessage("errors.exist"));
            }
        }
        return errors;
    }
}
