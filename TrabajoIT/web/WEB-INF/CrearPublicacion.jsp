<%-- 
    Document   : CrearPublicacion
    Created on : 27-may-2014, 23:21:41
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
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <html:link action="/inicio.do">Principal</html:link>
                    <img src="images/guia-menu.png">
                    Gesti&oacute;n Publicaciones
                    <img src="images/guia-menu.png">
                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                <html:form action="/publicaciones" >
                    <table>
                        <tr>
                            <th>id publicacion</th>
                            <th>Nick</th>
                            <th>id veh&iacute;culo</th>
                            <th>nombre ciudad</th>
                            <th>nombre universidad</th>
                            <th>descripci&oacute;n</th>
                            <th>fecha</th>
                            <th>Hora</th>
                            <th colspan="2">
                                <html:submit property="add" value="add"></html:submit>
                                </th>
                            </tr>
                    </html:form>
                    <logic:iterate name="lista" id="lista">
                        <html:form action="/publicaciones" >
                            <tr>
                                <td><html:text name="lista" property="idPublicacion" /></td>
                                <td><html:text name="lista" property="nick" /></td>
                                <td><html:text name="lista" property="idVehiculo" /></td>
                                <td><html:text name="lista" property="nombreCiudad" /></td>
                                <td><html:text name="lista" property="nombreUniversidad" /></td>
                                <td><html:text name="lista" property="descripcion" /></td>
                                <td><html:text name="lista" property="fecha" /></td>
                                <td><html:text name="lista" property="hora" /></td>
                                <td><html:submit property="update" value="Editar" ></html:submit></td>
                            </html:form>
                                <html:form action="/publicaciones" >
                                <td><html:submit property="delete" value="Eliminar" ></html:submit></td>
                                </tr>
                        </html:form>
                    </logic:iterate>
                </table>

                <%
                    if (request.getParameter("add") != null) {
                        request.removeAttribute("add");
                %>
                <html:form action="/publicaciones">
                    <table>
                        <tbody>
                            <tr>
                                <td><html:text name="lista" property="idPublicacion" /></td>
                                <td><html:text name="lista" property="nick" /></td>
                                <td><html:text name="lista" property="idVehiculo" /></td>
                                <td><html:text name="lista" property="nombreCiudad" /></td>
                                <td><html:text name="lista" property="nombreUniversidad" /></td>
                                <td><html:text name="lista" property="descripcion" /></td>
                                <td><html:text name="lista" property="fecha" /></td>
                                <td><html:text name="lista" property="hora" /></td>
                                <html:hidden property="save" value="si" />
                                <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                            </tr>
                        </tbody>
                    </table>
                </html:form>

                <% }%>
                <p>Actualizar la p&aacute;gina por cada modifiaci&oacute;n</p>
                </div>
            </section>  
        </div>
        </body>
</html:html>
