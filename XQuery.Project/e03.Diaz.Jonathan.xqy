<results>
{
    for $x in doc("widget.company.xml")/employees/employee
    where $x/@branch="1"
    return $x
}
</results>