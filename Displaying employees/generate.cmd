SET filePrefix=%1
java org.apache.xalan.xslt.Process -IN %filePrefix%.xml -XSL %filePrefix%.xslt -OUT %filePrefix%.html

java org.apache.xalan.xslt.Process -IN cd.xml -XSL cd.xslt -OUT cdReport1.html

java org.apache.xalan.xslt.Process -IN people.xml -XSL d01.Diaz.Jonathan.xslt -OUT d01.Diaz.Jonathan.html

java org.apache.xalan.xslt.Process -IN people.xml -XSL d02.Diaz.Jonathan.xslt -OUT d02.Diaz.Jonathan.html

java org.apache.xalan.xslt.Process -IN people.xml -XSL d03.Diaz.Jonathan.xslt -OUT d03.Diaz.Jonathan.html

java org.apache.xalan.xslt.Process -IN people.xml -XSL d04.Diaz.Jonathan.xslt -OUT d04.Diaz.Jonathan.html

