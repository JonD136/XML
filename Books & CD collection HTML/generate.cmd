SET filePrefix=%1
java org.apache.xalan.xslt.Process -IN %filePrefix%.xml -XSL %filePrefix%.xslt -OUT %filePrefix%.html

java org.apache.xalan.xslt.Process -IN cd.xml -XSL cd.xslt -OUT cdReport1.html

java org.apache.xalan.xslt.Process -IN cd.xml -XSL cd.xslt -OUT cdReport2.html