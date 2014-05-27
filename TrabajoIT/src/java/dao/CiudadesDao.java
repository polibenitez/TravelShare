/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import hibernate.Ciudades;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author francisco
 */
public class CiudadesDao {
        Session hSession = null;

    public CiudadesDao() {
        this.hSession = HibernateUtil.getSessionFactory().openSession();
    }

    public void create(Ciudades v) {

        hSession.beginTransaction();
        hSession.save(v);
        hSession.getTransaction().commit();
    }

    public Ciudades get(String nombre) {
        hSession.clear();
        Query q = hSession.createQuery("from Ciudades where nombre='" + nombre + "' ");
        List<Ciudades> lista = q.list();
        if (!lista.isEmpty()) {
            return lista.get(0);
        }
        return null;
    }

    public List<Ciudades> getList() {
        hSession.clear();
        Query q = hSession.createQuery("from Ciudades");
        List<Ciudades> lista = q.list();
        if (!lista.isEmpty()) {
            return lista;
        }
        return null;
    }

    public void delete(Ciudades v) {

        hSession.beginTransaction();
        hSession.delete(v);
        hSession.getTransaction().commit();
    }

    public void update(Ciudades v) {

        org.hibernate.Transaction tx = hSession.beginTransaction();
        //sesion.createQuery("update Vehiculos set horaEntrada = '" + v.getFechaEntrada() + "', horaSalida = '" + v.getFechaSalida() + "', tiempoPermitido = '" + v.getTiempoPermitido() + "' where matricula = '" + v.getMatricula() + "' ").executeUpdate();
        hSession.update(v);
        hSession.getTransaction().commit();

    }
}
