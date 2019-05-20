<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>JRDesign</title>
                <link rel="stylesheet" href="../css/barra_lateral.css"/>
                <link rel="stylesheet" href="../css/procesos.css"/>
                <script src="../javascript/scripts.js"></script>
                <link rel="shortcut icon" href="../imagenes/favicon.png" type="image/x-icon"/>


            </head>
            <body >
                <div id="sidebar" class="sidebar">
                    <a href="#" class="boton-cerrar" onclick="ocultar()">
                        <img src="../imagenes/multi.png" alt="multi"/>
                    </a>
                    <ul class="menu">
                        <li>
                            <a href="../index.html">INICIO</a>
                        </li>
                        <li>
                            <a href="../html/noticias.html">NOTICIAS</a>
                        </li>
                        <li>
                            <a href="../html/equipo.html">EQUIPO</a>
                        </li>
                        <li>
                            <a href="../html/proyecto.html">PROYECTOS</a>
                        </li>
                        <li>
                            <a href="../html/form.html">CONTACTO</a>
                        </li>
                    </ul>
                </div>
                <div id="contenido">
                    <a id="abrir" class="abrir-cerrar" href="javascript:void(0)" onclick="mostrar()">
                        <img id="icono" src="../imagenes/menu.png" alt=""/>
                    </a>
                    <a id="cerrar" class="abrir-cerrar" href="#" onclick="ocultar()" style="font-size: 0%"> .</a>
                </div>
                <div id="fondo"></div>
                <div id="desplazamiento">
                    <div id="transparente"></div>
                    <header>
                        <img src="../imagenes/logo.png" alt=""/>
                    </header>
                    <main>
                        <section>
                            <xsl:for-each select="personas/nodo">
                                <article>
                                    <p class="comentario">
                                        <xsl:value-of select="comentario"/>
                                    </p>
                                    <div class="imagen">
                                        <img src="{imagen}"/>
                                        <hr/>
                                    </div>
                                </article>

                            </xsl:for-each>
                        </section>
                    </main>
                    <footer>
                        <ul>
                            <a href="">
                                <li>2019 JRDesign. Diseño por José Ramón Hidalgo</li>
                            </a>
                            <a href="">
                                <li>Colaboraciones</li>
                            </a>
                            <a href="">
                                <li>Información de contacto</li>
                            </a>
                            <a href="">
                                <li>Blog</li>
                            </a>
                        </ul>

                        <ul>
                            <li>
                                <a href="">
                                    <img src="../imagenes/redesSociales/facebook.png" alt=""/>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../imagenes/redesSociales/instagram.png" alt=""/>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../imagenes/redesSociales/gorjeo.png" alt=""/>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="../imagenes/redesSociales/instagram.png" alt=""/>
                                </a>
                            </li>
                        </ul>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>