<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>Document</title>
                <link rel="stylesheet" href="../css/barra_lateral.css"/>
                <link rel="stylesheet" href="../css/people.css"/>
                <script src="../javascript/scripts.js"></script>            
            </head>
            <body>
                <div id="sidebar" class="sidebar">
                    <a href="#" class="boton-cerrar" onclick="ocultar()">
                        <img src="../imagenes/multi.png" alt="multi"/>
                    </a>
                    <ul class="menu">
                        <li>
                            <a href="../index.html">INICIO</a>
                        </li>
                        <li>
                            <a href="#">NOTICIAS</a>
                        </li>
                        <li>
                            <a href="#">PROCESOS</a>
                        </li>
                        <li>
                            <a href="#">PROYECTOS</a>
                        </li>
                        <li>
                            <a href="../html/form.html">CONTACTO</a>
                        </li>
                    </ul>
                </div>
                <div id="contenido">
                    <a id="abrir" class="abrir-cerrar" href="javascript:void(0)" onclick="mostrar()">
                        <img id="icon" src="../imagenes/menu.png" alt=""/>
                    </a>
                    <a id="cerrar" class="abrir-cerrar" href="#" onclick="ocultar()" style="font-size: 0%"> .</a>
                </div>
                <div id="fondo"></div>
                <div id="desplazamiento">
                    <div id="transparente"></div>
                    <header>
                        <img src="../imagenes/logo.png" alt=""/>
                    </header>
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

                </div>



            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
