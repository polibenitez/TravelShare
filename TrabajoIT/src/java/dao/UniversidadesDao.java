/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import hibernate.Universidades;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author francisco
 */
public class UniversidadesDao {

    Session hSession = null;

    public UniversidadesDao() {
        this.hSession = HibernateUtil.getSessionFactory().openSession();
    }

    public void create(Universidades v) {

        hSession.beginTransaction();
        hSession.save(v);
        hSession.getTransaction().commit();
    }

    public Universidades get(String nombre) {
        hSession.clear();
        Query q = hSession.createQuery("from Universidades where nombre='" + nombre + "' ");
        List<Universidades> lista = q.list();
        if (!lista.isEmpty()) {
            return lista.get(0);
        }
        return null;
    }

    public List<Universidades> getList() {
        hSession.clear();
        Query q = hSession.createQuery("from Universidades");
        List<Universidades> lista = q.list();
        if (!lista.isEmpty()) {
            return lista;
        }
        return null;
    }

    public void delete(Universidades v) {

        hSession.beginTransaction();
        hSession.delete(v);
        hSession.getTransaction().commit();
    }

    public void update(Universidades v) {

        org.hibernate.Transaction tx = hSession.beginTransaction();
        //sesion.createQuery("update Vehiculos set horaEntrada = '" + v.getFechaEntrada() + "', horaSalida = '" + v.getFechaSalida() + "', tiempoPermitido = '" + v.getTiempoPermitido() + "' where matricula = '" + v.getMatricula() + "' ").executeUpdate();
        hSession.update(v);
        hSession.getTransaction().commit();

    }
}
