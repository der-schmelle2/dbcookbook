<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step version="1.0"
  name="xinclude-rng-xslt2" type="t:xinclude-rng-xslt2"
  xmlns:t="urn:x-toms:xproc:library"
  xmlns:db="http://docbook.org/ns/docbook"
  xmlns:cx="http://xmlcalabash.com/ns/extensions"
  xmlns:c="http://www.w3.org/ns/xproc-step"
  xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:err="http://www.w3.org/ns/xproc-error">
  <p:documentation>
    <db:para>Pipeline with XIncludes, RNG validation, and XSLT steps</db:para>
  </p:documentation>

  <p:input port="source" primary="true"/>
  <p:input port="schema"/>
  <p:input port="stylesheet"/>
  <p:input port="parameters" kind="parameter"/>
  <p:option name="version" select="'2.0'" cx:type="1.0|2.0">
    <p:documentation>
      <db:para>The XSLT version (default 2.0)</db:para>
    </p:documentation>
  </p:option>
  <p:option name="dtd-id-idref-warnings" select="'true'">
    <p:documentation>
      <db:para>If the dtd-id-idref-warnings option is
        true, then the validator should treat a schema that is
        incompatible with the ID/IDREF/IDREFs feature of [RELAX NG DTD
        Compatibility] as if the document was
      invalid.</db:para>
    </p:documentation>
  </p:option>

  <p:output port="result"/>  
  
  <p:xinclude name="xinclude"/>
  
  <p:validate-with-relax-ng name="rng-validate">
    <p:input port="schema">
      <p:pipe step="xinclude-rng-xslt2" port="schema"/>
    </p:input>
    <p:with-option name="dtd-id-idref-warnings" select="$dtd-id-idref-warnings"/>
  </p:validate-with-relax-ng>

  <p:xslt name="transform">
    <p:input port="stylesheet">
      <p:pipe step="xinclude-rng-xslt2" port="stylesheet"/>
    </p:input>
    <p:input port="parameters">
      <p:pipe step="xinclude-rng-xslt2" port="parameters"/>
    </p:input>
    <p:with-option name="version" select="$version"/>
  </p:xslt>

</p:declare-step>
