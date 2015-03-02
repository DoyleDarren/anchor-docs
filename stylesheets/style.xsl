<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
      <head> 
        <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="chrome=1"/>
    <title>Anchor-docs by DrrnDyl</title>

    <link rel="stylesheet" type="text/css" href="stylesheets/styles.css" />
    <link rel="stylesheet" type="text/css" href="stylesheets/pygment_trac.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
     </head>
			<body>
				<h1><xsl:value-of select="configure/section/pagehead"/></h1>
        <xsl:for-each select="configure/section">
          <h2><xsl:value-of select="subhead"/></h2>
          <p><xsl:value-of select="content"/></p>
          <xsl:if test="snippet"> 
            <pre><code><xsl:value-of select="snippet"/></code></pre>
          </xsl:if> 

        <xsl:for-each select="numlist">
          <xsl:if test="//numlist">
              <ol>
                <xsl:for-each select="list">
                  <li><xsl:value-of select="."/></li>
                  <xsl:if test="snippet">
                    <xsl:value-of select="//configure/section/numlist/snippet"/>
                    <pre><code><xsl:value-of select="snippet"/></code></pre>
                  </xsl:if>  
                </xsl:for-each>
            </ol>
          </xsl:if>  
        </xsl:for-each>
        <xsl:for-each select="bulletlist">
          <xsl:if test="//bulletlist">
            <ul>
              <xsl:for-each select="list">
                <li><xsl:value-of select="."/></li>
                 <xsl:if test="snippet">
                  <xsl:value-of select="//configure/section/bulletlist/snippet"/>
                  <pre><code><xsl:value-of select="snippet"/></code></pre>
                 </xsl:if> 
                </xsl:for-each>
            </ul>
          </xsl:if>  
        </xsl:for-each>

            
           </xsl:for-each>     
			</body>
    </html>	
	</xsl:template>	
</xsl:stylesheet>