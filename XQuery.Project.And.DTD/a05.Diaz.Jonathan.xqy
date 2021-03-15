(:
    fileName: a01.lastname.firstname.xqy
    java -jar XQuery.jar a03.lastname.firstname.xqy > a03.lastname.firstname.xml
:)


<results>
{
for $x in doc("widget.company.xml")/employees/employee

where $x/@branch='4'  or $x/@gender='f'
let $j := $x/@branch 



let $d := $x/phone


order by $x/salary ascending


return <row> 

        <name> = {data($x/fullName)} </name>
        <company> = {data($x/company)} </company>
        <email> {data($x/email)} </email>
        <location branch= "{$j}" phone= "{$d}" > {data($x/address/state)}</location>
         
         </row>
}
</results>