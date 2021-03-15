(:
    fileName: a01.lastname.firstname.xqy
    java -jar XQuery.jar a01.lastname.firstname.xqy > a01.lastname.firstname.xml
:)
<results>
{
for $x in doc("widget.company.xml")/employees/employee

return <row> 
        <name> = {data($x/fullName)} </name>
        <company> = {data($x/company)} </company>
         </row>
}
</results>