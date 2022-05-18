<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="es">
    <head>
        <title>Curriculum Vitae</title>
        <style>
            body {
                margin: 30px 30px 30px 30px;
                background-color: rgb(135, 189, 142);
            }

            h1{
                text-decoration:none;
            }

            p {
                color: yellow;
            }

            .epigrafes {
              color: green;  
            }

            img {
                position: fixed;
                top: 10%;
                left: 80%;
                display: inline-block;
                width: 150px;
                height: 150px;
                border-radius: 50px;
                border: 0.5em #265301 solid;
            }
        </style>    
    </head>
    <body>
        <h1>Curriculum Vitae</h1>
        <h2 class="epigrafes">Datos personales</h2>
        <p>Nombre: </p><xsl:value-of select="curriculum_vitae/datos_personales/nombre"/>
        <p>Apellidos: </p><xsl:value-of select="curriculum_vitae/datos_personales/apellidos"/>
        <p>
            <img>
                <xsl:attribute name="src">
                <xsl:value-of select="curriculum_vitae/datos_personales/foto_personal"/>
                </xsl:attribute>
            </img>
        </p>
        <h2>Redes Sociales: </h2>
        <ul>
            <xsl:for-each select="curriculum_vitae/datos_personales/rss/red_social"> 
                <li><xsl:value-of select="nombre"/></li>
            </xsl:for-each>
        </ul>
        
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>