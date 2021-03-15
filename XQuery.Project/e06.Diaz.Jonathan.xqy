<results>
{
    for $x in doc("widget.company.xml")/employees/employee
    where $x/@branch="4"
    return $x
}
</results>