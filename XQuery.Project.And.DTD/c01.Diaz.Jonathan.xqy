let $x := doc("widget.company.xml")/employees/employee
return
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">0</script>
</head>
<body>

<div class="container">
  <h2>Question 1</h2>
  <p>The .table-dark class adds a black background to the table:</p>            
  <table class="table table-dark">
    <thead>
      <tr>
        <th>Full Name</th>
        <th>State</th>
        <th>Salary</th>
      </tr>
    </thead>
    <tbody>
    {

        for $row at $count in $x
        return
      <tr>
        <td>{$row/fullName/text()}</td>
        <td>{$row/address/state/text()}</td>
        <td>{$row/salary/text()}</td>
      </tr>
    }
    </tbody>
  </table>
</div>

</body>
</html>
