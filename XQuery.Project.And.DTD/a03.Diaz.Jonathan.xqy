(:
    fileName: a01.lastname.firstname.xqy
    java -jar XQuery.jar a03.lastname.firstname.xqy > a03.lastname.firstname.xml
:)


<results>
{
for $x in doc("widget.company.xml")/employees/employee

where $x/@branch='4'
let $j := $x/@branch

where $x/@gender='f'
let $g := $x/@gender


let $m := if ($x/salary > 90000.00) then 'y' else 'n'

return <row gender='{$g}' rich='{$m}'> 

        <name> = {data($x/fullName)} </name>
        <company> = {data($x/company)} </company>
        <location branch= "{$j}"> {data($x/address/state)}</location>
         <money> {data($x/salary)} </money>
         </row>
}
</results>