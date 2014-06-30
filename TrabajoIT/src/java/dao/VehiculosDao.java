/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import hibernate.Publicaciones;
import hibernate.Vehiculo;
import java.util.Iterator;
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

    public void create(Vehiculo v) {

        hSession.beginTransaction();
        hSession.save(v);
        hSession.getTransaction().commit();
    }

    public List<Vehiculo> getListUser(String nombre) {
        hSession.clear();
        Query q = hSession.createQuery("from Vehiculo where nick like'" + nombre + "' ");
        List<Vehiculo> lista = q.list();
        if (!lista.isEmpty()) {
            return lista;
        }
        return null;
    }

    public Vehiculo getBorrar(int id) {
        hSession.clear();
        Query q = hSession.createQuery("from Vehiculo where id_vehiculo ='" + id + "' ");
        List<Vehiculo> lista = q.list();
        if (!lista.isEmpty()) {
            return lista.get(0);
        }
        return null;
    }

    public void delete(Vehiculo v) {

        hSession.beginTransaction();
        hSession.delete(v);
        hSession.getTransaction().commit();
    }

    public void update(Vehiculo v) {

        org.hibernate.Transaction tx = hSession.beginTransaction();
        //sesion.createQuery("update Vehiculos set horaEntrada = '" + v.getFechaEntrada() + "', horaSalida = '" + v.getFechaSalida() + "', tiempoPermitido = '" + v.getTiempoPermitido() + "' where matricula = '" + v.getMatricula() + "' ").executeUpdate();
        hSession.update(v);
        hSession.getTransaction().commit();

    }

    public Vehiculo obtenerVehiculo(int id) {

        org.hibernate.Transaction tx = hSession.beginTransaction();
        Query q = hSession.createQuery("from Vehiculo where id_vehiculo = '" + id + "' ");
        List li = (List<Vehiculo>) q.list();

        Iterator<Vehiculo> it = li.iterator();
        Vehiculo object = null;
        boolean entra = false;
        while (it.hasNext()) {
            object = it.next();
        }
        return object;
    }
    
    public List<Vehiculo> getList() {
        hSession.clear();
        Query q = hSession.createQuery("from Vehiculo");
        List<Vehiculo> lista=q.list();
        if(!lista.isEmpty())
            return lista;
        return null;
    }
}
