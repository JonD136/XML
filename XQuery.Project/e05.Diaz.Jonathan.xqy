<results>
{
    for $x in doc("widget.company.xml")/employees/employee
    where $x/@branch="3"
    return $x
}
</results>