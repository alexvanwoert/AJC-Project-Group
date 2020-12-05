<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern>
        <rule context="title">
            <report test= "matches(., '[a-z]' )">There should be no lower case letters within the element title.</report>
        </rule>
        <rule context="lb">
            <assert test="@type and @n">The lb element does not contain @type and @n attributes.</assert>
        </rule>
        <rule context="pn">
            <assert test="matches(., '[0-9]')">The pn element does not contain an integer.</assert>
        </rule>
    </pattern>
    
    
</schema>