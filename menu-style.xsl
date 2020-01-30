<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <style>
                body {
                scroll-behavior: smooth;
                margin: 0;
                }

                ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 25%;
                background-color: #C7C7C7;
                position: fixed;
                height: 100%;
                overflow: auto;
                }

                li a {
                display: block;
                color: #000;
                padding: 8px 16px;
                text-decoration: none;
                }

                li a.active {
                background-color: #4CAF50;
                color: white;
                }

                li a:hover:not(.active) {
                background-color: #555;
                color: white;
                }

                section{
                background-color:#ffffff;
                }

                h2{ font-weight:bold;}

                body{background-color:#ececec}
            </style>
            <head>
                <name>Stéphane Menu</name>
            </head>
            <body>
                <ul>
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="#beverages">Beverages</a>
                    </li>
                    <li>
                        <a href="#cocktail">Craft Cocktail</a>
                    </li>
                    <li>
                        <a href="#appetizers">Appetizers</a>
                    </li>
                    <li>
                        <a href="#starters">Starters</a>
                    </li>
                    <li>
                        <a href="#main">Main Course</a>
                    </li>
                    <li>
                        <a href="#dessert">Desserts</a>
                    </li>
                </ul>
                <div style="margin-left:25%;padding:1px 16px;height:1000px;">
                <section id="beverages">
                    <h2 style="text-align:center">Beverages</h2>
                    <xsl:for-each select="menu/Beverages/foodstuff">
                        <div style="background-color: #dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>
                <section id="cocktail">
                    <h2 style="text-align:center">Craft Cocktail</h2>
                    <h3 style="text-align:center">Our special recipe</h3>
                    <xsl:for-each select="menu/CraftCocktail/foodstuff">
                        <div style="background-color:#dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>
                <section id="appetizers">
                    <h2 style="text-align:center">Appetizers</h2>
                    <xsl:for-each select="menu/Appetizers/foodstuff">
                        <div style="background-color:#dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>
                <section id="starters">
                    <h2 style="text-align:center">Starters</h2>
                    <xsl:for-each select="menu/Entrees/foodstuff">
                        <div style="background-color:#dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>
                <section id="main">
                    <h2 style="text-align:center">Main Course</h2>
                    <xsl:for-each select="menu/MainDish/foodstuff">
                        <div style="background-color:#dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>

                <section id="dessert">
                    <h2 style="text-align:center">Desserts</h2>
                    <xsl:for-each select="menu/Desserts/foodstuff">
                        <div style="background-color:#dbe4ee;color:black;padding:8px">
                            <span style="font-weight:bold">
                                <xsl:value-of select="name"/> -
                            </span>
                            <xsl:value-of select="price"/>
                        </div>
                        <div style="margin-left:50px;margin-bottom:1em;font-size:12pt">
                            <p style="font-style:italic">
                                <xsl:value-of select="info"/>
                                <br/>
                                <span style="font-weight:bold"><xsl:value-of select="choice"/>
                                </span>
                            </p>
                        </div>
                    </xsl:for-each>
                </section>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>