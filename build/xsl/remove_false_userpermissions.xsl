<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sf="http://soap.sforce.com/2006/04/metadata" xmlns="http://soap.sforce.com/2006/04/metadata"  exclude-result-prefixes="sf">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
<xsl:strip-space elements="*"/>

<xsl:template match="@* | node()">
  <xsl:copy>
	  <xsl:copy-of select="@*" />
	  <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

<xsl:template match="sf:userPermissions[sf:enabled = 'false']">
</xsl:template>

</xsl:stylesheet>