<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Torneo</title>
                <h1>TORNEO</h1>
                <link rel="stylesheet" type="text/css" href="tab_torneo.css"/>
            </head>
            <body>
                <!-- Creación de la tabla torneo -->
                <h2>EQUIPOS</h2>
                <table class="table">
                    <tr>
                        <td>Importe_euros</td>
                        <td>Nombre</td>
                        <td>Victorias</td>
                        <td>Nacionalidad</td>
                    </tr>
                    <xsl:for-each select="torneo/equipo">
                        <xsl:sort select="nombre"/>
                        <tr>
                            <td><xsl:value-of select="@importe"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="wins"/></td>
                            <td><xsl:value-of select="nacionalidad"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>PARTICIPANTES</h2>

                <!-- Creación de la tabla jugadores -->
                <table class="table">
                    <tr>
                        <td>Id</td>
                        <td>Mote</td>
                        <td>Kills</td>
                        <td>Plataforma</td>
                        <td>Equipo</td>
                    </tr>
                    <xsl:for-each select="torneo/equipo/jugadores/jugador">
                        <xsl:sort select="bajas" order="descending"/>
                        <xsl:choose>
                            <xsl:when test='plataforma="pc"'>
                                <tr bgcolor="#4ae0e9">
                                    <td><xsl:value-of select="@ID"/></td>
                                    <td><xsl:value-of select="mote"/></td>
                                    <td><xsl:value-of select="bajas"/></td>
                                    <td><xsl:value-of select="plataforma"/></td>
                                    <td><xsl:value-of select="tm"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:when test='plataforma="consola"'>
                                <tr bgcolor="#e95f4a">
                                    <td><xsl:value-of select="@ID"/></td>
                                    <td><xsl:value-of select="mote"/></td>
                                    <td><xsl:value-of select="bajas"/></td>
                                    <td><xsl:value-of select="plataforma"/></td>
                                    <td><xsl:value-of select="tm"/></td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

				



