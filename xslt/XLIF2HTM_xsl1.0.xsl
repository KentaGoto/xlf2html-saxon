<?xml version='1.0'?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0' xmlns:xlink='http://www.w3.org/1999/xlink'><xsl:output method="html" encoding="UTF-8"/><xsl:template match="/"><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /></head><body style="font-family:Arial,メイリオ,sans-serif;font-size:12px;"><style>.mid{width:20px;}.src{width:300px;}.trgt{width:300px;}.status{width:150px;}.system{width:400px;}.score{width:30px;}.cmt{width:100px;}table{border: solid 1px #000000; border-collapse: separate;}th{border-style:solid; border-width:1px; border-color:gray; padding:5px; font-family:Courier,メイリオ,monospace;font-size:10px;background-color:darkslategray;color:gainsboro;}td{border-style:solid; border-width:1px; border-color:gray; padding:5px; font-family:Arial,メイリオ,sans-serif;font-size:12px;line-height:130%;}</style><div class="bdy"><xsl:apply-templates/></div></body></html></xsl:template><xsl:template match="header"></xsl:template><xsl:template match="trans-unit"><table width="100%" border="1"><tr><!-- <td><xsl:apply-templates select="@id"/></td> --><td width="50%"><xsl:apply-templates select="source"/></td><td width="50%"><xsl:apply-templates select="target"/></td></tr></table></xsl:template><xsl:template match="mrk"><xsl:variable name="varref" select="./text()"/><xsl:if test="name(preceding-sibling::*[1])='bpt'"><span style="color:red;background-color:pink;font-size:x-large;">NG!</span></xsl:if><xsl:choose><xsl:when test="@mtype='seg'"><xsl:apply-templates/></xsl:when><xsl:when test="@mtype='protected'"><span style="color:olive;font-family:Courier New, monospace;">&lt;ph varref="<xsl:value-of select="$varref"/>"&gt;</span><xsl:apply-templates/><span style="color:olive;font-family:Courier New, monospace;">&lt;/ph&gt;</span></xsl:when><xsl:otherwise><span style="background-color:yellow;"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="bpt"><br/><span style="font-family:Courier New, monospace;color:red;background-color:palegreen;">[<xsl:value-of select="@id"/>]</span><xsl:choose><xsl:when test="@ctype='esri_uicontrol'"><span style="color:olive;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><span style="color:olive;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="ept"><span style="color:olive;font-family:Courier New, monospace;"><xsl:apply-templates/></span><span style="font-family:Courier New, monospace;color:red;background-color:palegreen;">[<xsl:value-of select="@id"/>]</span></xsl:template><xsl:template match="it"><br/><xsl:choose><xsl:when test="@pos='open'"><span style="color:magenta; font-family:Courier New, monospace; ">[<xsl:value-of select="@id"/>]<span style="color:navy; background-color:yellow;font-size:150%;"><xsl:apply-templates/></span></span></xsl:when><xsl:when test="@pos='close'"><span style="color:navy; background-color:yellow;font-size:150%; font-family:Courier New, monospace; "><xsl:apply-templates/></span><span style=" color:magenta; font-family:Courier New, monospace; ">[<xsl:value-of select="@id"/>]</span></xsl:when><xsl:otherwise><span style="color:olive;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="ph"><xsl:choose><xsl:when test="@ctype='draft-comment'"><span style="color:gray;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:when><xsl:when test="@ctype='image'"><span style="color:magenta;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:when><xsl:when test="@ctype='pi'"><span style="color:red;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><span style="background-color:gold;font-family:Courier New, monospace;"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template></xsl:stylesheet>