<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:d="http://docbook.org/ns/docbook"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:tmpl="http://docbook.org/xslt/titlepage-templates"
  xmlns:f="http://docbook.org/xslt/ns/extension"
  xmlns:t="http://docbook.org/xslt/ns/template"
  xmlns:m="http://docbook.org/xslt/ns/mode"
  xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="d xlink tmpl m t f h l">
  
  <xsl:template name="t:user-titlepage-templates" as="element(tmpl:templates-list)?">
    <tmpl:templates-list>
      <tmpl:templates name="book">
        <tmpl:recto>
          <div tmpl:class="titlepage">
            <d:title/>
            <d:subtitle/>
            <d:author/>
            <d:legalnotice/>
            <d:pubdate/>
            <d:revision/>
            <d:revhistory/>          
            <d:abstract/>
            <d:annotation xml:id="draft"/>
            <d:othercredit class="proofreader"/>
          </div>
          <h:hr tmpl:keep="true"/>
        </tmpl:recto>
      </tmpl:templates>
    </tmpl:templates-list>
  </xsl:template>

</xsl:stylesheet>