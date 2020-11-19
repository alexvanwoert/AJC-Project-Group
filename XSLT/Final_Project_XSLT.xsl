<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Christmas Bells</title>
                <link rel="stylesheet" type="text/css" href="ajcStyle.css"/>
            </head>
            
            <body>
                <h1 id="H"><xsl:apply-templates select="descendant::Title"/></h1>
                <h2><xsl:apply-templates select="descendant::Author"/></h2>
                <h4>Follow this and additional works at: <a href="http://dh.howard.edu/ajc_plays">http://dh.howard.edu/ajc_plays</a></h4>
                <h4><xsl:apply-templates select="descendant::reccCit"/></h4>
                <h4><xsl:apply-templates select="descendant::docAccessNote"/></h4>
                
                <section id="contents">
                    <table> 
                    <tr>
                        <th>Scene Number</th>
                        <th>Characters</th>
                        <th>Pages</th>
                    </tr>
                    <xsl:apply-templates select="descendant::scene" mode="toc"/>
                    </table>
                </section>
                
                <section id="readingView">
                    <xsl:apply-templates select="descendant::scene"/>
                </section>
            </body>
        </html>
    </xsl:template>
    
    
    
    <xsl:template match="scene" mode="toc">
        <tr>
            <td><a href="#C{count(preceding-sibling::scene) + 1}">
                <xsl:apply-templates select="sceneNumb"/></a>
            </td>
            <td><xsl:value-of select="string-join(sort(distinct-values(descendant::spk ! normalize-space())), ', ') "/></td>
            <td><xsl:value-of select="string-join(sort(distinct-values(descendant::pn ! normalize-space())), ', ')"/></td>   
        </tr>
    </xsl:template>
    
    <xsl:template match="scene">
        <br/>
        <h2 id="C{count(preceding-sibling::scene) + 1}"><a href="#H"><xsl:apply-templates select="sceneNumb"/></a></h2>
        <div class="p"><xsl:apply-templates select="sd"/></div>
        <div class="p"><xsl:apply-templates select="dial"/></div>
        
    </xsl:template>
    
    <xsl:template match="dial"> 
        <p><xsl:apply-templates/></p> 
    </xsl:template>
    
    <xsl:template match="desc"> 
        <p><xsl:apply-templates/></p> 
    </xsl:template>
    
    <xsl:template match="spk">
        <u><xsl:apply-templates/>:</u><br/>
    </xsl:template>
    
    <xsl:template match="sd">
        <em><xsl:apply-templates/></em>
    </xsl:template>
    
    <xsl:template match="lb">
        <xsl:apply-templates/><br/>
    </xsl:template>
</xsl:stylesheet>

