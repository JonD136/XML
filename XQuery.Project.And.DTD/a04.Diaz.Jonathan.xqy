(:
    fileName: a01.lastname.firstname.xqy
    java -jar XQuery.jar a03.lastname.firstname.xqy > a03.lastname.firstname.xml
:)


<results>
{
for $x in doc("widget.company.xml")/employees/employee



where $x/@branch='2'  or $x/@branch='4'
let $j := if ($x/@branch='2') then 'B2' else 'B4'

let $g := if ($x/@gender='f') then 'female' else 'male'


let $m := if ($x/salary > 85000.00) then 'gold' else 'normal'

return <row type='{$m}' gender='{$g}' > 

        <name> = {data($x/fullName)} </name>
        <company> = {data($x/company)} </company>
        <location branch= "{$j}"  > {data($x/address/state)}</location>
         <money> {data($x/salary)} </money>
         </row>
}
</results>