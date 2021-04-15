<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrait" page-height="297mm"
                                       page-width="210mm" margin-top="5mm"
                                       margin-bottom="5mm" margin-left="5mm"
                                       margin-right="5mm">
                    <fo:region-body margin-top="25mm" margin-bottom="20mm"/>
                    <fo:region-before region-name="xsl-region-before"
                                      extent="25mm" display-align="before"
                                      precedence="true"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrait">
                
                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0">
                    <fo:block text-align="center">Company info.</fo:block>
                    <fo:block text-align="center">
                        <fo:instream-foreign-object>
                            <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="48.997px" height="48.998px" viewBox="0 0 415.295 415.295" style="enable-background:new 0 0 415.295 415.295;" xml:space="preserve">
                                <g>
                                    <path d="M81.498,277.735h252.299c5.522,0,10-4.477,10-10v-167.29c0-5.523-4.478-10-10-10H81.498c-5.522,0-10,4.477-10,10v167.29
                                           C71.498,273.258,75.976,277.735,81.498,277.735z M91.498,110.446h232.299v147.29H91.498V110.446z"/>
                                    <path d="M405.295,297.474h-28.589V70.72c0-5.523-4.478-10-10-10H48.589c-5.522,0-10,4.477-10,10v226.753H10
                                           c-5.522,0-10,4.477-10,10c0,25.972,21.13,47.101,47.102,47.101h321.092c25.972,0,47.102-21.129,47.102-47.101
                                           C415.295,301.951,410.817,297.474,405.295,297.474z M368.193,334.575H47.102c-11.414,0-21.202-7.092-25.189-17.101h162.431
                                           c0.247,5.304,4.612,9.531,9.976,9.531h26.656c5.364,0,9.73-4.227,9.976-9.531h162.431
                                           C389.396,327.483,379.607,334.575,368.193,334.575z M356.706,80.72v216.753H58.589V80.72H356.706z"/>
                                    <path d="M206.915,187.948c16.771,0,30.415-13.645,30.415-30.416s-13.645-30.415-30.415-30.415S176.5,140.762,176.5,157.533
                                           S190.145,187.948,206.915,187.948z M206.915,147.118c5.743,0,10.415,4.672,10.415,10.415c0,5.743-4.672,10.416-10.415,10.416
                                           s-10.415-4.672-10.415-10.416C196.5,151.79,201.172,147.118,206.915,147.118z"/>
                                    <path d="M218.6,188.363h-21.904c-18.143,0-32.903,14.76-32.903,32.903v10.381c0,5.523,4.478,10,10,10h67.711
                                           c5.522,0,10-4.477,10-10v-10.381C251.503,203.124,236.742,188.363,218.6,188.363z M231.503,221.647h-47.711v-0.381
                                           c0-7.115,5.788-12.903,12.903-12.903H218.6c7.115,0,12.903,5.789,12.903,12.903V221.647z"/>
                                </g>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block> 
                    
                    <fo:table table-layout="fixed" width="100%" font-size="8pt"
                              border-color="transparent" border-width="0mm"
                              border-style="solid" text-align="center"
                              display-align="center" space-after="5mm">
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-body font-size="95%">
                            <fo:table-row height="8mm" border-top="none" border-left="none" border-right="none"
                                          border-width="0.35mm" border-style="solid"
                                          text-align="center" display-align="center"
                                          space-after="5mm">
                                <fo:table-cell>
                                    <fo:block>Company name</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Adress</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>City</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Url adress</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Phone</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row height="8mm">
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:value-of select="company/company-name"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:value-of select="company/adress"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:value-of select="company/city"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:value-of select="company/url-adress"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:value-of select="company/tel"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block text-align="center">Company products.</fo:block>
                    <fo:block text-align="center">
                        <fo:instream-foreign-object>
                            <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="48.997px" height="48.998px" viewBox="0 0 48.997 48.998" style="enable-background:new 0 0 48.997 48.998;"
                                 xml:space="preserve">
                               <g>
                                    <path d="M45.961,18.702c-0.033-0.038-0.061-0.075-0.1-0.112l-1.717-1.657c1.424-0.323,2.957-1.516,2.957-2.74
                                            c0-1.426-1.979-1.932-3.668-1.932c-1.766,0-1.971,1.21-1.992,2.065l-4.43-4.271c-0.9-0.891-2.607-1.592-3.883-1.592H24.5h-0.002
                                            h-8.63c-1.275,0-2.981,0.701-3.882,1.592l-4.429,4.271c-0.023-0.855-0.228-2.065-1.992-2.065c-1.691,0-3.669,0.506-3.669,1.932
                                            c0,1.224,1.534,2.417,2.958,2.74l-1.717,1.657c-0.039,0.037-0.066,0.074-0.1,0.112C1.2,20.272,0,23.184,0,25.297v6.279
                                            c0,1.524,0.601,2.907,1.572,3.938v2.435c0,1.424,1.192,2.585,2.658,2.585h3.214c1.466,0,2.657-1.159,2.657-2.585v-0.623h14.397
                                            H24.5h14.396v0.623c0,1.426,1.19,2.585,2.658,2.585h3.213c1.467,0,2.657-1.161,2.657-2.585v-2.435
                                            c0.972-1.031,1.572-2.414,1.572-3.938v-6.279C48.998,23.184,47.798,20.272,45.961,18.702z M13.613,11.953
                                            c0.623-0.519,1.712-0.913,2.255-0.913h8.63H24.5h8.63c0.543,0,1.632,0.394,2.255,0.913l5.809,5.63H24.5h-0.002H7.805L13.613,11.953
                                            z M1.993,24.347c0-1.546,1.21-2.801,2.704-2.801c1.493,0,6.372,2.864,6.372,4.41s-4.879,1.188-6.372,1.188
                                            C3.203,27.144,1.993,25.894,1.993,24.347z M10.102,34.573H9.587H9.072l-3.055,0.005c-0.848-0.264-1.446-0.572-1.869-0.903
                                            c-0.214-0.167-0.378-0.341-0.506-0.514c-0.129-0.175-0.223-0.347-0.284-0.519c-0.38-1.074,0.405-2.061,0.405-2.061h5.214
                                            l3.476,3.99L10.102,34.573L10.102,34.573z M31.996,34.575H24.5h-0.002h-7.496c-1.563,0-2.832-1.269-2.832-2.831h10.328H24.5h10.328
                                            C34.828,33.308,33.559,34.575,31.996,34.575z M32.654,29.812H24.5h-0.002h-8.154c-1.7,0-3.08-2.096-3.08-4.681h11.234H24.5h11.234
                                            C35.734,27.717,34.354,29.812,32.654,29.812z M45.641,32.644c-0.062,0.172-0.156,0.344-0.285,0.518
                                            c-0.127,0.173-0.291,0.347-0.506,0.514c-0.422,0.331-1.021,0.641-1.869,0.903l-3.055-0.005h-0.515h-0.515h-2.353l3.478-3.99h5.213
                                            C45.234,30.583,46.02,31.568,45.641,32.644z M44.301,27.144c-1.492,0-6.371,0.356-6.371-1.188s4.879-4.41,6.371-4.41
                                            c1.494,0,2.704,1.255,2.704,2.801C47.005,25.892,45.795,27.144,44.301,27.144z"/>
                               </g>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block>
                    <fo:table table-layout="fixed" width="100%" font-size="8pt"
                              border-color="#92a8d1" border-width="0mm"
                              border-style="solid" text-align="center"
                              display-align="center" space-after="5mm">
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(60)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(80)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(55)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-body font-size="95%">
                            <fo:table-row height="8mm" border-top="none" border-left="none" border-right="none"
                                          border-width="0.35mm" border-style="solid"
                                          text-align="center" display-align="center"
                                          space-after="5mm">
                                <fo:table-cell>
                                    <fo:block>Photo</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Model</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Date of manufacture</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Engine volume</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Engine power</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Fuel type</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Gearbox</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Mileage</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Body type</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Number of doors</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Steering wheel side</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>MOT expiry date</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Co2 emission</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <xsl:for-each select="company/vehicles/car">
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <fo:external-graphic
                                                src="url(file:/C:/Users/valde/Pictures/Saityno/{model-name}.jpg)" content-height="scale-to-fit" height="10mm" content-width="15mm" scaling="non-uniform"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="model-name"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="date-of-manufacture"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="price"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="engine-volume"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="engine-power"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="fuel-type"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="gearbox"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="mileage"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="body-type"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="number-of-doors"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="steering-wheel-side"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="mot-expiry-date"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="co2-emission"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    <fo:block 
                        id="end-of-document">
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>