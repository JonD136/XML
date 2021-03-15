(:
    fileName: a00.lastname.firstname.xqy
    java -jar XQuery.jar a00.lastname.firstname.xqy > a00.lastname.firstname.xml
:)
<people>
{
for $x in doc("widget.company.xml")/employees/employee
let $g := if ($x/@gender='f') then 'female' else 'male'
let $m := $x/salary
return <person gender='{$g}' salary="{$m}" >{data($x/fullName)}</person>
}
</people>
