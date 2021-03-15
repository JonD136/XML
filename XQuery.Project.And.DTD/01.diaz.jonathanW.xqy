let $x := doc("widget.company.xml")/employees/employee
return

<html lang="en">

<!-- 

	File Format:  01.lastname.firstname.xqy 
		      01.lastname.firstname.html

	Email to: 2018_12.k6p1n259kj81pqva@u.box.com
	

	The Objective, is to display the following fields
        Full Name
	Branch Location, Salary, State and Email Address

	highlight all the employees that are in branch 1
	hint use the class active to highlight rows

	sort the data by salary in descending order

--> 

<head>
  <title>Female Employees</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">0</script>
</head>
<body>



<div class="container">
  <h2>Female Employees</h2>
  <div class="list-group">
  {

      for $row at $count in $x
      where $row/@gender='f' 
      let $j := if ($row/@branch = 1) then 'active' else ' '
      order by $row/salary descending

    return


    <a href="#" class="list-group-item {$j}">
      <h4 class="list-group-item-heading">{$row/fullName/text()}</h4>
      <p class="list-group-item-text">Branch Location: {data($row/@branch)}, 
                                      Salary: {$row/salary/text()}, 
                                      State: {$row/address/state/text()} 
                                      Email: {$row/email/text()} </p>
    </a>
  }

  
  </div>
   
</div>

</body>
</html>