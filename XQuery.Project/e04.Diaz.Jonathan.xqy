<results>
{
    for $x in doc("widget.company.xml")/employees/employee
    where $x/@branch="2"
    return $x
}
</results>