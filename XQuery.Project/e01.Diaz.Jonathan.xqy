<results>
{
    for $x in doc("widget.company.xml")/employees/employee
    where $x/@gender="f"
    return $x
}
</results>