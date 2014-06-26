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
<<<<<<< HEAD
        <title>TravelShare</title>
=======
        <title>JSP Page</title>
>>>>>>> FETCH_HEAD
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
<<<<<<< HEAD
                    <h1>Ciudades</h1>
                    <html:link action="inicio.do" styleClass="enCabecera">Gesti&oacute;n</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Ciudades

                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                    <html:form action="/ciudadesAction.do" >
                        <table>
                            <tr>
=======
                    <h1>Viajes</h1>
                    <html:link action="/inicio.do">Principal</html:link>
                        <img src="images/guia-menu.png">
                        Gesti&oacute;n Ciudades
                        <img src="images/guia-menu.png">
                    </div>
                </header>
                <section class="login">
                    <div id="tablaCrud">
                    <html:form action="/ciudadesAction" >
                        <table>
                            <tr>

>>>>>>> FETCH_HEAD
                                <th>Nombre</th>
                                <th colspan="2">
                                    <html:submit property="add" value="add"></html:submit>
                                    </th>
                                </tr>
                        </html:form>
<<<<<<< HEAD
                        
                        <logic:iterate name="lista" id="lista">
                            
                            <html:form action="/ciudadesAction.do" >
                                <tr>
                                    <td><html:text name="lista" property="nombre" disabled="true"/></td>

                                    <html:hidden property="update" value="${lista.nombre}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </html:form>
                                <html:form action="/ciudadesAction.do" >
                                    <html:hidden property="delete" value="${lista.nombre}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </tr>
                            </html:form>
                        </logic:iterate>
                        
=======
                        <logic:notEmpty name="lista">

                            <logic:iterate name="lista" id="lista">
                                <html:form action="/ciudadesAction" >
                                    <tr>

                                        <td><html:text name="lista" property="nombre" /></td>
                                        <td>editar<html:submit property="update" value="${lista.nombre}" ></html:submit></td>
                                        <td>eliminar<html:submit property="delete" value="${lista.nombre}" ></html:submit></td>
                                        </tr>
                                </html:form>
                            </logic:iterate>
                        </logic:notEmpty>
>>>>>>> FETCH_HEAD
                    </table>

                    <%
                        if (request.getParameter("add") != null) {
                            request.removeAttribute("add");
                    %>
<<<<<<< HEAD
                    <html:form action="/ciudadesAction.do">
                        <table>
                            <tbody>
                                <tr>
                                    <td><html:text name="lista" property="nombre" disabled="true"/></td>
                                    <td><html:submit property="save" value="Añadir" ></html:submit></td>
                                    </tr>
                                </tbody>
                            </table>
=======
                    <html:form action="/ciudadesAction">
                        <table>
                            <tbody>
                                <tr>

                                    <td><html:text property="nombre" /></td>
                                    <html:hidden property="save" value="si" />
                                    <td><html:image styleClass="boton" src="images/save.png"/></td>
                                </tr>
                            </tbody>
                        </table>
>>>>>>> FETCH_HEAD
                    </html:form>

                    <% }%>
                    <p>Actualizar la p&aacute;gina por cada modifiaci&oacute;n</p>
<<<<<<< HEAD
                </div>
            </section>  
        </div>
    </body>
</html:html>
=======
                    <br></div>
            </section>  
        </div>
        
    </body>
</html>
>>>>>>> FETCH_HEAD
