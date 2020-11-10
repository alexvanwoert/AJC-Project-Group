<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">



    <xsl:template match="lb">
        
        <lb type="line" n="{count(preceding-sibling::lb) + 1}">
            
            <xsl:apply-templates/> 
        </lb>
        
    </xsl:template>
</xsl:stylesheet>