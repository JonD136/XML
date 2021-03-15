(:
    fileName: a01.lastname.firstname.xqy
    java -jar XQuery.jar a01.lastname.firstname.xqy > a01.lastname.firstname.xml
:)

<results>
{
for $x in doc("widget.company.xml")/employees/employee
where $x/@branch='1'
let $j := $x/@branch

return <row> 
        <name> = {data($x/fullName)} </name>
        <company> = {data($x/company)} </company>
        <location branch= "{$j}"> {data($x/address/state)}</location>
         </row>
}
</results>