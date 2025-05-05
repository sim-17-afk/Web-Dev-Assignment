<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Student Result</title>
      </head>
      <body>
        <h2>Student Application - Results</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Marks</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="students/student">
            <tr>
              <td><xsl:value-of select="name" /></td>
              <td><xsl:value-of select="marks" /></td>
              <td>
                <xsl:choose>
                  <xsl:when test="marks &gt;= 35">
                    Pass
                  </xsl:when>
                  <xsl:otherwise>
                    Fail
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
