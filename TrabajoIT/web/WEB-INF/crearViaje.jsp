<%-- 
    Document   : crearViaje
    Created on : 26-may-2014, 10:51:35
    Author     : francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Travel Share</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="contenedor">
            <header>
                <div class="titulos">
                    <h1>Viajes</h1>
                    <a href="inicio.jsp">Principal</a>
                    <img src="imagenes/guia-menu.png">
                    Nuevo Viaje
                    <img src="imagenes/guia-menu.png">
                </div>
            </header>
            <section class="login">
                <form id="registro" action="#" method="GET">
                    <p>
                        Eres: hombre mujer
                    </p>
                    <p>
                        <input type="text" class="textbox" placeholder="Punto de Salida" autofocus required/>
                    </p>
                    <p>
                        <input type="text" class="textbox" placeholder="Punto de LLegada" autofocus required/>
                    </p>
                    <p>
                        <!-- <input type="date" name="fecha" placeholder="Fecha de Salida" autofocus required/> -->
                        <input type="number" placeholder="D&iacute;a" maxlength="2" min="1" max="31" autofocus required/>
                        <select id="fecha_mes" name="fecha_mes">
                            <option value="1">Enero</option>
                            <option value="2">Febrero</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Septiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select id="fecha_mes" ano="fecha_ano">
                            <option value="2014">2014</option>
                            <option value="2015">2015</option>
                        </select>
                    </p>
                    <p>
                        año de nacimiento
                    </p>
                    <p>
                        <input type="submit" class="boton" type="submit" name="login" value="Crear Viaje"/>
                    </p>
                </form>
            </section>
        </div>
    </body>
</html>
