<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <!--Template su tutto il documento-->
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title> 
                <link rel="stylesheet" type="text/css" href="./style.css" />
                <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.js"></script>
                <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
                <script type="text/javascript" src="script.js"/>
            </head>
        
            <body>
                <!--Stampa titolo e sottotitolo-->
                <h1>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </h1>
                <h2>
                    Dal manoscritto di <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:author/tei:name"/>
                </h2>
                <!--Introduzione-->
                <p class="intro">
                    <strong class="titolo">Introduzione al progetto</strong><br/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:encodingDesc/tei:projectDesc/tei:p"/><br/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:p"/>
                    <br></br><br></br>
                    <strong>Titolo Ms.fr. 3951/1: </strong><i><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:analytic/tei:title"/></i>.<br></br>
                    <strong>Estensione: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent/tei:measure"/>.<br></br><br></br>
                    <strong>Titolo Ms.fr. 3951: </strong><i><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:title"/></i>.<br></br>
                    <strong>Estensione: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:imprint/tei:biblScope"/>.
                </p>
                <p class="info">
                    <strong class="titolo">Descrizione</strong><br/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:foliation"/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:p"/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:layoutDesc/tei:layout/tei:p"/>
                    <br></br><br></br>
                    <strong>Ubicazione: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/>, <a href = "https://archives.bge-geneve.ch/"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:collection"/></a>.<br/>
                    <strong>Lingua: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language"/><br/>
                    <strong>Data di creazione: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:creation/tei:date"/>.<br/>
                    <strong>Porzione citata: </strong><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:citedRange"/>.
                </p>
                <!--Stampa pagina 17-->
                <div id="primaPagina">
                <!--Pulsante per andare avanti-->
                    <div class="container" id="button">
                        <div class="center">
                            <button class="pulsante">
                                <svg width="150px" height="60px" viewBox="0 0 150 60" class="border">
                                    <polyline points="179,1 179,59 1,59 1,1 179,1" class="bg-line" />
                                    <polyline points="179,1 179,59 1,59 1,1 179,1" class="hl-line" />
                                </svg>
                                <span>PAGINA SUCCESSIVA</span>
                            </button>
                        </div>
                    </div>
                    <!--Immagine pagina 17-->
                    <div id="immagine17" class="zoom-container">
                        <xsl:for-each select="tei:TEI/tei:facsimile/tei:surface[@xml:id='pagina17']/tei:figure/tei:graphic/@url">                                        
                            <img id="pag17" alt="pagina 17">                                            
                                <xsl:attribute name="src">                                                
                                    <xsl:value-of select="."/>                                                
                                </xsl:attribute>                                            
                            </img>
                            <div id="myresult" class="zoom-result"></div>
                        </xsl:for-each>
                    </div>
                    <!--Corpo della pagina-->
                    <div id="pagina">
                        <!--Numero 17-->
                        <h3 class="numb">
                            <xsl:value-of select="id('numPage')"/>
                        </h3>
                        <!--Testo-->
                        <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:div">
                            <xsl:if test=".[@xml:id='pericope1'] | .[@xml:id='pericope2'] | .[@xml:id='pericope3'] | .[@xml:id='pericope4'] | .[@xml:id='pericope5'] | .[@xml:id='pericope6']">
                                <div>
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates/>
                                </div><br></br>
                            </xsl:if>
                            <!--Stampa solamente della prima parte della pericope 7-->
                            <xsl:if test=".[@xml:id='pericope7']">
                                <div>
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="./tei:div/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="./tei:div[@xml:id='primaParte']"/>
                                </div>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                    <div style="clear:both"></div>                    

                </div>

            <!--Stampa pagina 18 (inizialmente non visibile)--> 
                <div id="secondaPagina">
                <!--Pulsante per tornare indietro-->
                    <div class="container" id="button2">
                        <div class="center">
                            <button class="pulsante">
                                <svg width="150px" height="60px" viewBox="0 0 150 60" class="border">
                                    <polyline points="179,1 179,59 1,59 1,1 179,1" class="bg-line" />
                                    <polyline points="179,1 179,59 1,59 1,1 179,1" class="hl-line" />
                                </svg>
                                <span>PAGINA PRECEDENTE</span>
                            </button>
                        </div>
                    </div>
                    <!--Immagine pagina 18-->
                   <div id="immagine18" class="zoom-container">
                        <xsl:for-each select="tei:TEI/tei:facsimile/tei:surface[@xml:id='pagina18']/tei:figure/tei:graphic/@url">                                        
                            <img id="pag18" alt="pagina 18">                                            
                                <xsl:attribute name="src">                                                
                                    <xsl:value-of select="."/>                                                
                                </xsl:attribute>                                            
                            </img>
                            <div id="myresult2" class="zoom-result"></div>
                        </xsl:for-each>
                    </div>
                    <!--Corpo della pagina-->
                    <div id="pagina2">
                        <h3 class="numb">
                            <xsl:value-of select="id('numPage2')"/>
                        </h3>
                        <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:div">
                            <xsl:if test=".[@xml:id='pericope8'] | .[@xml:id='pericope9'] | .[@xml:id='pericope10'] | .[@xml:id='pericope11']">
                                <div>
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates/>
                                </div><br></br>
                            </xsl:if>
                            <!--Stampa solamente della seconda parte della pericope 7-->
                            <xsl:if test=".[@xml:id='pericope7']">
                                <div>
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="./tei:div[position()=2]/@xml:id"/>
                                    </xsl:attribute>
                                    <xsl:apply-templates select="./tei:div[@xml:id='secondaParte']"/>
                                </div><br></br>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>

                <!--Abbreviazioni presenti nelle singole pericopi-->
                <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:div">
                    <xsl:choose>
                        <!--Caso della pericope tra due pagine-->
                        <xsl:when test=".[@xml:id='pericope7']">
                            <xsl:for-each select="./tei:div">
                                <div class="note">
                                    <xsl:attribute name="name">
                                        <xsl:value-of select="./@xml:id"/>
                                    </xsl:attribute>                  
                                    <p class="ttl">Forma originale delle abbreviazioni</p> 
                                    <xsl:for-each select=".//tei:choice/tei:abbr">
                                        <xsl:copy-of select="."/><br/>
                                    </xsl:for-each>
                                </div>
                            </xsl:for-each>
                        </xsl:when>
                        <!--Altrimenti-->
                        <xsl:otherwise>
                            <div class="note">
                                <xsl:attribute name="name">
                                    <xsl:value-of select="./@xml:id"/>
                                </xsl:attribute>                  
                                <p class="ttl">Forma originale delle abbreviazioni</p> 
                                <xsl:for-each select=".//tei:choice/tei:abbr">
                                    <xsl:copy-of select="."/><br/>                                       
                                </xsl:for-each>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <!--Traduzione delle singole pericopi-->
                <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:p/tei:ref">
                    <div class="traduzione">
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <p class="ttl">Traduzione</p>
                        <xsl:value-of select="."/>
                    </div>
                </xsl:for-each>

                <img id="imginfo" src="info.png" alt="icona info"></img>
                <img id="imginfo2" src="info.png" alt="icona info"></img>
                <div class="gloss">
                    <strong>Glosse (da <a href="https://raw.githubusercontent.com/angelodel80/corsoCodifica/master/CTaa20-21/progetto-esame/Ontology_F_d_S.owl" style="text-decoration:underline;">qui</a>)</strong><br/>
                        <xsl:for-each select="tei:TEI/tei:text/tei:back/tei:div/tei:ab/tei:gloss">
                            - <i><xsl:value-of select="@xml:id"/></i>: <xsl:value-of select="./tei:ref"/><br/>

                    </xsl:for-each>

                </div>


                <!--Div sulla storia-->
                <div class="storia">
                    <strong class="titolo">Breve storia</strong><br/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history"/>
                </div>

                <!--Div sulla bibliografia-->
                <div class="biblio">
                    <strong class="titolo">Informazioni bibliografiche</strong><br/>
                    Il manoscritto Ms.fr. 3951 è stato pubblicato da <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:imprint/tei:publisher"/> 
                    in <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:imprint/tei:pubPlace"/> (<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:imprint/tei:date"/>). 
                    L'editore è  <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:monogr/tei:editor"/>.<br/>
                    La trascrizione e la traduzione in italiano provengono da: <a href="https://github.com/angelodel80/corsoCodifica/blob/master/CTaa20-21/progetto-esame/Prolusioni1-new.pdf"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:additional/tei:listBibl/tei:bibl/tei:title"/>
                    - <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:additional/tei:listBibl/tei:bibl/tei:title[@type='sub']"/>.</a>
                </div>

                <!--Footer-->
                <footer id="footer">
                    <p>Le immagini provengono dalla <a class="footer" href = "https://archives.bge-geneve.ch/"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/></a>.<br/><br/>
                    Codifica e trascrizione a cura di: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name"/><br/>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/>, <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/>
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>

    <!--Template per la stampa delle pericopi-->
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:div">
        <xsl:value-of select="./tei:ab"/>    
    </xsl:template>
    <!--Template per gli a capo-->
    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>
    <!--Template per mostrare solo l'espansione e non l'abbreviazione o solo la forma corretta-->
    <xsl:template match="tei:choice">
        <b><xsl:value-of select="./tei:expan"/></b>
    </xsl:template>
    <xsl:template match="tei:choice[@xml:id='correzione1']">
        <xsl:value-of select="./tei:corr"/>
    </xsl:template>
    <!--Template per eliminare i del e l'head-->
    <xsl:template match="tei:del"/>   
    <xsl:template match="tei:head"/>

</xsl:stylesheet>