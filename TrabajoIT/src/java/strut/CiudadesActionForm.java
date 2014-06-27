/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package strut;

import dao.CiudadesDao;
import hibernate.Ciudades;
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
public class CiudadesActionForm extends org.apache.struts.action.ActionForm {

    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    public CiudadesActionForm() {
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
        CiudadesDao ciudadesDao = new CiudadesDao();
        List<Ciudades> v = ciudadesDao.getList();
        if (getNombre() != null && getNombre().trim().equals("")) {

            if (v == null) {
                v = new ArrayList<Ciudades>();
            }
            request.setAttribute("lista", v);
            errors.add("ciudad", new ActionMessage("errors.ciudad"));
        }
        
        Iterator<Ciudades> it = v.iterator();
        while(it.hasNext()){
            if(it.next().getNombre().equals(getNombre())){
                if (v == null) {
                v = new ArrayList<Ciudades>();
            }
            request.setAttribute("lista", v);
            errors.add("existe", new ActionMessage("errors.existe"));
            }
        }
        
        return errors;
    }
}
