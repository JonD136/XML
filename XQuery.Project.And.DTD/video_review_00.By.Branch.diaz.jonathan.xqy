let $x := doc("widget.company.xml")/employees/employee
return

<html lang="en">
<head>
  <title>Color By Branch</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">0</script>
<style>
    span.bar {{
      width: .25in;
      border: 1px solid black;
      background-color: black;
    }}
</style>
</head>
<body>

<div class="container">
  <h2>Color By Branch</h2>
  <p>Display full Name, age, gender, state, and salary.  The gender fields display the word female, and male </p>
  <p>Show only salaries greater than 90,000.  Sort by salary in descending order</p>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
    <thead>
      <tr>
        <th>fullName</th>
        <th>age</th>
        <th>Gender</th>
        <th>State</th>
        <th>Salary</th>
      </tr>
    </thead>
    <tbody>
       {

        for $row at $count in $x
        let $gender := if ($row/@gender = 'f') then 'female' else 'male'
        let $b1 := if ($row/@branch = '1') then 'success' else ' '
        let $b2 := if ($row/@branch = '2') then 'danger' else ' '
        let $b3 := if ($row/@branch = '3') then 'info' else ' '
        let $b4 := if ($row/@branch = '4') then 'warning' else ' '
        let $bars := if ($row/salary > 100000) then
                       <span>
                         <span class='bar'>.</span>
                          <span class='bar'>.</span>
                          <span class='bar'>.</span>
                        </span>
                        else 
                        <span class='bar'>.</span>
        where  $row/salary > 90000.00 
        let $fSalary := format-number($row/salary, "$,000.00")
        order by number($row/branch) descending
        return
        
      <tr class= "{$b1} {$b2} {$b3} {$b4}">
        <td >{$row/fullName/text()}</td>
        <td>{data($row/@age)}</td>
        <td>{$gender}</td>
        <td>{$row/address/state/text()}</td>
        <td>{$bars} - {$fSalary}</td>
      </tr>
    }     
        
    </tbody>
  </table>
</div>
</body>
</html>