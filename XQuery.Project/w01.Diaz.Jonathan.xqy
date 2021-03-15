<html>
<body>
<h1> New Employees</h1>
<ul>

{
    let $rowCount := doc("widget.company.xml")
    return <span>count:  {count($rowCount/employees/employee[@gender ="f" and @age <= 30])}</span>
}

{
    
    for $x in doc ("widget.company.xml")/employees/employee
    where $x/@age <= 30 and $x/@gender ="f"
    order by number($x/@id)
    return <li> Id: {data($x/@id)} 
            FullName: {data($x/fullName)}  
            Age: {data($x/@age)} 
            Gender: {data($x/@gender)}</li>

}
</ul>
</body>
</html>