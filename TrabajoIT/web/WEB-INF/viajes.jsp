<%-- 
    Document   : viajes
    Created on : 26-may-2014, 16:29:38
    Author     : francisco
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>TravelShare</title>
    </head>
    <body>
        <logic:notEmpty name="lista" scope="request">
            
            <div class="contenedor">
                <header>
                    <div class="titulos">
                        <h1>Viajes</h1>
                        <html:link action="/inicio.do" styleClass="enCabecera">Principal</html:link>
                        <html:img src="imagenes/guia-menu.png" />
                        Viajes
                        
                    </div>
                </header>
                <section class="login">
                    <div id="tablaCrud">
                        <table>
                            <tr>
                                <th>Nick</th>
                                <th>Nombre Ciudad</th>
                                <th>Nombre Universidad</th>
                                <th>Descripcion</th>
                                <th>Fecha</th>
                                <th>Hora</th>
                            </tr>                        
                                <logic:iterate name="lista" id="l">
                            <tr>

                                <td>
                                    <bean:write name="l" property="nick" />
                                </td>
                                <td>
                                    <bean:write name="l" property="nombreCiudad" />
                                </td>
                                <td>
                                    <bean:write name="l" property="nombreUniversidad" />
                                </td>
                                <td>
                                    <bean:write name="l" property="descripcion" />
                                </td>
                                <td>
                                    <bean:write name="l" property="fecha" />
                                </td>
                                <td>
                                    <bean:write name="l" property="hora" />
                                </td>
                            </tr>
                            </logic:iterate>
                        </table>
                    </div>
                </section>
            </div>
        </logic:notEmpty>
    </body>
</html:html>
