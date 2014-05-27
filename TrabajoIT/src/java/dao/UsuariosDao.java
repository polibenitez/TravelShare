/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import hibernate.Usuarios;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author francisco
 */
public class UsuariosDao {
    Session hSession = null;

    public UsuariosDao() {
        this.hSession = HibernateUtil.getSessionFactory().openSession();
    }

//    public Usuarios create(String nombre, String pass, String nick) {     
//        Usuarios usuarios = new Usuarios(nombre, pass, nick);
//        hSession.beginTransaction();
//        hSession.save(usuarios);
//        hSession.getTransaction().commit();
//        return usuarios;
//    }
    public void create(Usuarios v) {
        
        hSession.beginTransaction();
        hSession.save(v);
        hSession.getTransaction().commit();
    }
    
    public Usuarios get(String nick, String pass) {
        hSession.clear();
        Query q = hSession.createQuery("from Usuarios where nick='"+nick+"' and pass='"+pass+"' ");
        List<Usuarios> lista=q.list();
        if(!lista.isEmpty())
            return lista.get(0);
        return null;
    }
    /**
     * @param pkUsuario Buscar por la clave primaria de nick
     */
    public Usuarios get(String nick) {
        hSession.clear();
        Query q = hSession.createQuery("from Usuarios where nick='"+nick+"'");
        List<Usuarios> lista=q.list();
        if(!lista.isEmpty())
            return lista.get(0);
        return null;
    }
    
    public List<Usuarios> getList() {
        hSession.clear();
        Query q = hSession.createQuery("from Usuarios");
        List<Usuarios> lista=q.list();
        if(!lista.isEmpty())
            return lista;
        return null;
    }
    
    public void delete(Usuarios v) {
        
        hSession.beginTransaction();
        hSession.delete(v);
        hSession.getTransaction().commit();
    }
    
    public void update(Usuarios v) {
        
        org.hibernate.Transaction tx = hSession.beginTransaction();
        //sesion.createQuery("update Vehiculos set horaEntrada = '" + v.getFechaEntrada() + "', horaSalida = '" + v.getFechaSalida() + "', tiempoPermitido = '" + v.getTiempoPermitido() + "' where matricula = '" + v.getMatricula() + "' ").executeUpdate();
        hSession.update(v);
        hSession.getTransaction().commit();

    }

    
}

