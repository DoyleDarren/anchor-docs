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
        <div class="wrapper">
      <header>
        <h1>Anchor-docs</h1>
        <p>Anchor CMS documentation</p>
  
         <p class="view"><a href="https://github.com/DrrnDyl/anchor-docs">View the Project on GitHub <small>DrrnDyl/anchor-docs</small></a></p>

      </header>
      <div class="navigation-menu">
        <ul class="menu">
          <li><a href="requirements.xml">Requirements</a></li>
          <li><a href="install.xml">Install</a></li>
          <li><a href="upgrade.xml">Upgrade</a></li>
          <li><a href="configure.xml">Configure</a></li> 
          <li><a href="posts.xml">Posts (Articles)</a></li>  
          <li><a href="comments.xml">Comments</a></li>
          <li><a href="pages.xml">Pages</a></li>
          <li><a href="categories.xml">Categories</a></li>
          <li><a href="users.xml">Users</a></li>
          <li><a href="metadata.xml">Metadata</a></li> 
          <li><a href="custom-fields.xml">Custom Fields</a></li>
          <li><a href="custom-variables.xml">Custom Variables</a></li>
          <li><a href="introduction-to-theming.xml">Introduction to theming</a></li>
          <li><a href="file-structure.xml">File Structure</a></li>
          <li><a href="custom-templates.xml">Custom Templates</a></li>
          <li><a href="articles.xml">Articles</a></li>
          <li><a href="categories.xml">Categories</a></li>
          <li><a href="comments.xml">Comments</a></li>
          <li><a href="config.xml">Config</a></li>
          <li><a href="helpers.xml">Helpers</a></li>
          <li><a href="menus.xml">Menus</a></li>
          <li><a href="metadata.xml">Metadata</a></li>
          <li><a href="pages.xml">Pages</a></li>
          <li><a href="posts.xml">Posts</a></li>
          <li><a href="search.xml">Search</a></li>
          <li><a href="users.xml">Users</a></li>
          <li><a href="base.xml">Base</a></li>
          <li><a href="category.xml">Categoty</a></li>
          <li><a href="comment.xml">Comment</a></li>
          <li><a href="extend.xml">Extend</a></li>
          <li><a href="page.xml">Page</a></li>
          <li><a href="plugin.xml">Plugin</a></li>
          <li><a href="post.xml">Post</a></li>
          <li><a href="user.xml">User</a></li>
        </ul>
      </div>    
      <section> 
        <h1><xsl:value-of select="page/section/pagehead"/></h1>
        <xsl:for-each select="page/section">
          <h2><xsl:value-of select="subhead"/></h2>
          <p>
            <xsl:if test="content/con[@type='par']">
              <xsl:for-each select="//section/content/con[@type='par']">
                  <xsl:value-of select="."/>
              </xsl:for-each>  
            </xsl:if>
            <xsl:if test="content/con[@type='link']">
              <xsl:for-each select="//section/content/con[@type='link']">
                <xsl:if test=".">
                    <a href="www.google.com"><xsl:value-of select="linkee[@type='content']"/></a>
                </xsl:if>
              </xsl:for-each> 
            </xsl:if>
            <xsl:if test="content/con[@type='par1']">
              <xsl:for-each select="//section/content/con[@type='par1']">
                  <xsl:value-of select="."/>
              </xsl:for-each> 
             </xsl:if>        
          </p>
          <xsl:if test="snippet"> 
            <pre><code><xsl:value-of select="snippet"/></code></pre>
          </xsl:if> 
          <xsl:for-each select="numlist">
            <xsl:if test="list">
              <ol>
                  <xsl:for-each select="list">
                     <li> 
                        <xsl:for-each select="listee">
                          <xsl:value-of select=".[@type='content']"/>
                            <xsl:if test=".[@type='snippet']">
                           <pre><code><xsl:value-of select=".[@type='snippet']"/></code></pre>
                            </xsl:if>
                        </xsl:for-each>
                    </li>
                  </xsl:for-each>                 
              </ol>
            </xsl:if>  
          </xsl:for-each>
          <xsl:for-each select="bulletlist">
            <xsl:if test="list">
              <ul>
                <xsl:for-each select="list">
                  <li><xsl:value-of select="."/></li>
                   <xsl:if test="snippet">
                    <xsl:value-of select="//page/section/bulletlist/snippet"/>
                    <pre><code><xsl:value-of select="."/></code></pre>
                   </xsl:if> 
                  </xsl:for-each>
              </ul>
            </xsl:if>  
          </xsl:for-each>
        </xsl:for-each>        
       </section>
   <footer>
        <p>This project is maintained by <a href="https://github.com/DrrnDyl">DrrnDyl</a></p>
        <!-- <p><small>Hosted on GitHub Pages &mdash; Theme by <a href="https://github.com/orderedlist">orderedlist</a></small></p> -->
      </footer>
    </div>
    <script src="javascripts/scale.fix.js"></script>
     </body>
     </html>
  </xsl:template> 
</xsl:stylesheet>     	
       	