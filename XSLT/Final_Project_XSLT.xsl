<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <!-- zat: I think should format the HYMN as song lyrics instead of paragraphs.  The CHORUS OF ANGELS has odd syntax.  I think some of it might need to be italicized.  I can create a SSI for the Overview page.  I was thinking we could include an image of Anna Julia Cooper on the Overview page, or she possibly have her own page with a short biography.  Let me know what you guys think.  -->
    
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="webstyle.css"/>
           
            </head>
            
            <body>
                <h1 id="H"><u><xsl:apply-templates select="descendant::TITLE"/></u></h1>
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="edition.html">PDF Edition</a></li>
                    <li><a href="Final_Project_XSLT_Output.html">XSLT Output</a></li>
                    <li><a href="analysis.html">Analysis</a></li>
                    <li><a href="conclusion.html">Conclusion</a></li>
                    <li><a href="Overview.html">Overview</a></li>
                    <li><a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img
                        alt="Creative Commons License" style="border-width:0"
                        src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a></li>
                </ul>
                <h2><xsl:apply-templates select="descendant::Author"/></h2>
                <h4>Follow this and additional works at: <a href="http://dh.howard.edu/ajc_plays">http://dh.howard.edu/ajc_plays</a></h4>
                <h4><xsl:apply-templates select="descendant::reccCit"/></h4>
                <h4><xsl:apply-templates select="descendant::docAccessNote"/></h4>
                <hr/>
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
                <hr/>
                <br/>
                <h2><b><xsl:apply-templates select="descendant::titlePage/title"/></b></h2>
                <h4>Listen to an audio track that concides with the play:  <a href="https://youtu.be/__J_T2zzmQc">Ring Christmas Bells</a>  </h4>
                <section id="readingView">
                    <xsl:apply-templates select="descendant::scene"/>
                </section>
                <ul class="lisc">
                    <li>This work is licensed under a: <a rel="license"
                        href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons
                        Attribution-NonCommercial 4.0 International License</a></li>
                </ul>
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
        <br><xsl:apply-templates select = "dial[speak='ANGELS']/spk/lb"/></br>
        <br><xsl:apply-templates select = "dial[speak='HYMN']/spk"/></br>
        <br><xsl:apply-templates select = "dial[speak='SHEPHERDS']/spk/lb"/></br>
        <br><xsl:apply-templates select = "dial[speak='THE KINGS']/spk/lb"/></br>
    </xsl:template>
    

    <xsl:template match="spk"> 
        <u><xsl:apply-templates/></u>:<br/>
    </xsl:template>
    
    <xsl:template match="dial[@speak='ANGELS']/lb[contains(., 'Silent Night')]">    
       <b> <a href = "https://www.youtube.com/watch?v=6GUnfLPpjLs">Silent Night</a></b>
    </xsl:template>
    
    <xsl:template match="dial[@speak='HYMN']/lb[contains(., 'O little town of Bethlehem')]">    
        <b> <a href = "https://www.youtube.com/watch?v=7lWshYhKTm4">O little town of Bethlehem</a></b>
    </xsl:template>
    

    
    <xsl:template match="dial[@speak='SHEPHERDS']/lb[contains(., 'Hark! the herald angels sing')]">    
        <b> <a href = "https://www.youtube.com/watch?v=p6r9O3zd8P8">Hark! the herald angels sing</a></b>
    </xsl:template>
    
    <xsl:template match="dial[@speak='THE KINGS']/lb[contains(., 'We three Kings of Orient are')]">    
        <b> <a href = "https://www.youtube.com/watch?v=p6r9O3zd8P8">We three Kings of Orient are</a></b>
    </xsl:template>
    
    <xsl:template match="dial">    
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
 
    <xsl:template match="desc"> 
        <span class = "desc"><xsl:apply-templates/></span>
    </xsl:template>
   
    <xsl:template match="sd">
        <em><xsl:apply-templates/></em>
    </xsl:template>
    
    <xsl:template match="lb">
        <xsl:apply-templates/><br/>
    </xsl:template>
</xsl:stylesheet>

