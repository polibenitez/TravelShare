/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import hibernate.Publicaciones;
import hibernate.Vehiculo;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author francisco
 */
public class VehiculosDao {
    
        Session hSession = null;

    public VehiculosDao() {
        this.hSession = HibernateUtil.getSessionFactory().openSession();
    }
    
    public Vehiculo get(int id) {
        hSession.clear();
//        Query i = hSession.createQuery("select idCiudad from Ciudades where nombre like '" + ciudad + "' ");
//        String idCiu = i.getQueryString();
//        hSession.clear();
//        Query j = hSession.createQuery("select idUniversidad from Universidades where nombre like'" + universidad + "' ");
//        String idUni = j.getQueryString();
//        hSession.clear();
        Query q = hSession.createQuery("from Vehiculo where idVehiculo='" + id + "' ");
        List<Vehiculo> lista = q.list();
        if (!lista.isEmpty()) {
            return lista.get(0);
        }
        return null;
    }
    
        public List<Vehiculo> getList(int id) {
        hSession.clear();
        Query q = hSession.createQuery("from Vehiculo where idVehiculo='" + id + "' ");
        List<Vehiculo> lista = q.list();
        if (!lista.isEmpty()) {
            return lista;
        }
        return null;
    }
}
