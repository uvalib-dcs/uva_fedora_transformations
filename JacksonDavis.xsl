<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output byte-order-mark="no" encoding="UTF-8" media-type="text/xml" xml:space="default"
        indent="yes"/>

    <xsl:output method="xml" indent="yes" name="xml"/>

    <xsl:template match="/">
        <mods>
            <xsl:for-each select="descmeta/title[@type='Constructed']">
                <xsl:element name="titleInfo">
                    <xsl:element name="title">
                        <xsl:value-of select="./text()"/>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
            
            <xsl:element name="name">
                <xsl:attribute name="authority">naf</xsl:attribute>
                <xsl:attribute name="type">personal</xsl:attribute>
                
                <xsl:element name="namePart">
                    <xsl:value-of>Davis, Jackson, 1882-1947</xsl:value-of>
                </xsl:element>
                
                <xsl:element name="role">
                    <xsl:element name="roleTerm">
                        <xsl:attribute name="type">
                            <xsl:value-of>text</xsl:value-of>
                        </xsl:attribute>
                    <xsl:value-of>photographer</xsl:value-of>
                    </xsl:element>
                    <xsl:element name="roleTerm">
                        <xsl:attribute name="type">
                            <xsl:value-of>code</xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="authority">
                            <xsl:value-of>marcrelator</xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of>pht</xsl:value-of>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            
            <xsl:element name="typeOfResource">
                <xsl:attribute name="collection">
                    <xsl:value-of>yes</xsl:value-of>
                </xsl:attribute>
                <xsl:value-of>still image</xsl:value-of>
            </xsl:element>
            
            <xsl:element name="genre">
                <xsl:attribute name="authority">
                    <xsl:value-of>aat</xsl:value-of>
                </xsl:attribute>
                <xsl:value-of>black-and-white photographs</xsl:value-of>
            </xsl:element>
            
            <xsl:element name="originInfo">
                <xsl:element name="place">
                    <xsl:element name="placeTerm">
                        <xsl:attribute name="type">
                            <xsl:value-of>code</xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="authority">
                            <xsl:value-of>marccountry</xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of>xxu</xsl:value-of>
                    </xsl:element>
                    <xsl:element name="placeTerm">
                        <xsl:attribute name="type">
                            <xsl:value-of>text</xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of>United States</xsl:value-of>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="dateCreated">
                    <xsl:attribute name="encoding">
                        <xsl:value-of>w3cdtf</xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="point">
                        <xsl:value-of>start</xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="keyDate">
                        <xsl:value-of>yes</xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of>1915</xsl:value-of>
                </xsl:element>
                <xsl:element name="dateCreated">
                    <xsl:attribute name="encoding">
                        <xsl:value-of>w3cdtf</xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="point">
                        <xsl:value-of>end</xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of>1947</xsl:value-of>
                </xsl:element>
            </xsl:element>
            
            <xsl:element name="physicalDescription">
                <xsl:element name="form">
                    <xsl:attribute name="authority">
                        <xsl:value-of select="descmeta/mediatype/form/authority/text()"/>
                    </xsl:attribute>
                    <xsl:value-of select="descmeta/mediatype/form/text()"/>
                </xsl:element>
                <xsl:element name="internetMediaType">
                    <xsl:value-of>image/tiff</xsl:value-of>
                </xsl:element>
                <xsl:element name="extent">
                    <xsl:value-of select="descmeta/physdesc[@type='extent']"/>
                </xsl:element>
                <xsl:element name="digitalOrigin">
                    <xsl:value-of>reformatted digital</xsl:value-of>
                </xsl:element>
            </xsl:element>


            <xsl:for-each select="descmeta/pid">
                <tr>
                    <td>
                        <xsl:value-of select="./text()"/>
                    </td>
                </tr>
            </xsl:for-each>
        </mods>
    </xsl:template>
</xsl:stylesheet>
