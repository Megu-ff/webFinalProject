<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
    		<head>
				<title>Newsletter Info</title>
			</head>
			<body>
				<!--Form to input new book details-->
				<form action="index.php" method="post" enctype="multipart/form-data">
					Name: <input type="text" name="name"/><br/>
					Email: <input type="text" name="email"/><br/>
					Security: <input type="text" name="Security"/><br/>

		<!--Form components to upload and submit-->			
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload"/>

    			
						</form>
				
				<!--1. All info -->
				<h2>All info:</h2>
			    <table border="1">
                <tr bgcolor="#9acd32">
                     <th>Name</th>
                     <th>Email</th>
                 </tr>
				<xsl:for-each select="/input/newsletter">
					<tr>
					  <td><xsl:value-of select="name"/></td>
					  <td><xsl:value-of select="email"/></td>					

					</tr>
				</xsl:for-each>
                </table>

			</body>
		</html>
	</xsl:template>
	
</xsl:transform>