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
public class VehiculoActionForm extends org.apache.struts.action.ActionForm {
    
     private Integer idVehiculo;
     private String nick;
     private String modelo;
     private String marca;
     private String descripcion;

    public Integer getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(Integer idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     *
     */
    public VehiculoActionForm() {
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
        if (getModelo() == null || getModelo().length() < 1) {
           errors.add("modelo", new ActionMessage("error.modelo.required"));
            // TODO: add 'error.nick.required' key to your resources
        }
        if (getMarca() == null || getMarca().length() < 1) {
            errors.add("Marca", new ActionMessage("error.marca.required"));
            // TODO: add 'error.nick.required' key to your resources
        }
        if (getDescripcion() == null || getDescripcion().length() < 1) {
           errors.add("descripcion", new ActionMessage("error.descripcion.required"));
            // TODO: add 'error.nick.required' key to your resources
        }
        return errors;
    }
}
