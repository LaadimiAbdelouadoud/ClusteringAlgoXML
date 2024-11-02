<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="ca.css"/>
                <title>Présentation Clustering</title>
            </head>
            <body>
                <div class="presentation">
                    <xsl:apply-templates select="ProjetAlgorithmesDeClustering/*"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="IntroductionCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <p><xsl:value-of select="intro"/></p>
        </section>
    </xsl:template>

    <xsl:template match="Sommaire">
        <section class="slide">
            <h1>Sommaire</h1>
            <ul>
                <xsl:for-each select="section">
                    <li><xsl:value-of select="@titre"/></li>
                </xsl:for-each>
            </ul>
        </section>
    </xsl:template>

    <xsl:template match="PresentationCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <p><xsl:value-of select="definition"/></p>
            <div class="applications">
                <h2>Usages</h2>
                <xsl:for-each select="utilisationsCA/utilisation">
                    <div class="application">
                        <h2><xsl:value-of select="@nom"/></h2>
                        <p><xsl:value-of select="."/></p>
                    </div>
                </xsl:for-each>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="TypesCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <xsl:for-each select="type">
                <div class="type">
                    <h2><xsl:value-of select="@nom"/></h2>
                    <p><strong>Définition:</strong> <xsl:value-of select="definition_type"/></p>
                    <p><strong>Avantages:</strong> <xsl:value-of select="avantages"/></p>
                    <p><strong>Limitations:</strong> <xsl:value-of select="limitations"/></p>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="ApplicationCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <xsl:for-each select="application">
                <div class="application">
                    <h2><xsl:value-of select="@nom"/></h2>
                    <p><xsl:value-of select="description_application"/></p>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="AlgorithmeDetailleCA">
        <section class="slide">
            <h1>Détails de l'Algorithme: <xsl:value-of select="algorithmeNom"/></h1>
            <p><xsl:value-of select="algorithmeDescription"/></p>
            <ol>
                <xsl:for-each select="etapes/etape">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ol>
            <p><strong>Avantages:</strong> <xsl:value-of select="avantages"/></p>
            <p><strong>Limitations:</strong> <xsl:value-of select="limitations"/></p>
        </section>
    </xsl:template>

    <xsl:template match="MetricsCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <xsl:for-each select="metric">
                <div class="metric">
                    <h2><xsl:value-of select="@nom"/></h2>
                    <p><xsl:value-of select="description_metric"/></p>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="DefisLimitationsCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <xsl:for-each select="defi">
                <div class="defi">
                    <h2><xsl:value-of select="@nom"/></h2>
                    <p><xsl:value-of select="description_defi"/></p>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="AvanceesTendancesCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <xsl:for-each select="avancee">
                <div class="avancee">
                    <h2><xsl:value-of select="@nom"/></h2>
                    <p><xsl:value-of select="description_avancee"/></p>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>

    <xsl:template match="ConclusionCA">
        <section class="slide">
            <h1><xsl:value-of select="@nom"/></h1>
            <p><xsl:value-of select="conclusion"/></p>
        </section>
    </xsl:template>
</xsl:stylesheet>
