<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../JmsRequestResponseSync.wsdl"/>
      <rootElement name="process" namespace="http://xmlns.oracle.com/SoaEjbReference/SoaEjb/GetEmployeeNameProcess"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../HandleEmployeesRequestSync.wsdl"/>
      <rootElement name="processResponse" namespace="http://xmlns.oracle.com/SoaEjbReference/SoaEjb/GetEmployeeNameProcess"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.0.0(build 090618.1440.5219) AT [TUE OCT 20 22:09:55 PDT 2009]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:msg_in_out="http://xmlns.oracle.com/SoaEjbReference/SoaEjb/GetEmployeeNameProcess"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/SoaRequestReply/soarnr/JmsRequestResponseSync"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ns0="http://xmlns.oracle.com/SoaRequestReply/soarnr/HandleEmployeesRequestSync"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi xsl msg_in_out tns plt xsd wsdl ns0 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket">
  <xsl:template match="/">
    <msg_in_out:processResponse>
      <msg_in_out:employee>
        <msg_in_out:key>
          <xsl:value-of select="/msg_in_out:process/msg_in_out:employee/msg_in_out:key"/>
        </msg_in_out:key>
      </msg_in_out:employee>
    </msg_in_out:processResponse>
  </xsl:template>
</xsl:stylesheet>
