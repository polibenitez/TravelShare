<%-- 
    Document   : CrearVehiculo
    Created on : 25-jun-2014, 15:42:19
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
        <title>TravelShare</title>
        <script type="text/javascript" >
            $(function() {
                $("#marca").attr("placeholder", "Marca");
                $("#modelo").attr("placeholder", "Modelo");
                $("#Descripcion").attr("placeholder", "Descripción");
            });
        </script>
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Veh&iacute;culos</h1>
                    <html:link action="checklogin.do" styleClass="enCabecera">Gesti&oacute;n</html:link>
                    <html:img src="imagenes/guia-menu.png" />
                    Veh&iacute;culos

                </div>
            </header>
            <section class="login">
                <div id="tablaCrud">
                    <html:form action="/vehiculo.do" >
                        <div class="error">
                            <html:errors property="falta"></html:errors>
                            </div>
                            <table>
                                <tr>
                                    <th>id veh&iacute;culo</th>
                                    <th>Nick</th>
                                    <th>marca</th>
                                    <th>modelo</th>
                                    <th>descripci&oacute;n</th>
                                    <th colspan="2">
                                    <html:submit property="add" value="add"></html:submit>
                                    </th>
                                </tr>
                        </html:form>
                        <logic:iterate name="lista" id="lista">
                            <html:form action="/vehiculo.do" >
                                <tr>
                                    <td><html:text name="lista" property="idVehiculo" disabled="true"></html:text></td>
                                    <td><html:text name="lista" property="nick" disabled="true"></html:text></td>
                                    <td><html:text name="lista" property="marca" styleId="marca"></html:text></td>
                                    <td><html:text name="lista" property="modelo" styleId="modelo"></html:text></td>
                                    <td><html:text name="lista" property="descripcion" styleId="descripcion"></html:text></td>
                                    <html:hidden property="update" value="${lista.idVehiculo}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </html:form>
                                <html:form action="/vehiculo" >
                                    <html:hidden property="delete" value="${lista.idVehiculo}"/>
                                    <td><html:image styleClass="boton1" src="imagenes/save.png"/></td>
                                </tr>
                            </html:form>
                        </logic:iterate>
                        <%
                            if (request.getParameter("add") != null) {
                                request.removeAttribute("add");
                        %>
                        <html:form action="/vehiculo.do">
                            <tr>
                                <td></td>
                                <td><html:text property="nick" value="${lista.nick}" disabled="true"/></td>
                                <td><html:text property="marca" styleId="marca"></html:text></td>
                                <td><html:text property="modelo" styleId="modelo"></html:text></td>
                                <td><html:text property="descripcion" styleId="descripcion"></html:text></td>
                                <td><html:submit property="save" value="Añadir" ></html:submit></td>
                                </tr>
                        </html:form>

                        <% }%>
                    </table>
                </div>
            </section>  
        </div>
    </body>
</html:html>
