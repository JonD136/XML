let $x := doc("2017.MarginalTaxes.final.xml")/data/taxes/tax
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
  <h2>Table</h2>
  <p>The .table-sm class makes the table smaller by cutting cell padding in half:</p>
  <table class="table table-bordered table-sm">
    <thead>
      <tr>
        <th>rowNo</th>
        <th>emp (employee number)</th>
        <th>salary</th>
        <th>state</th>
        <th>age</th>
        <th>marital status</th>
      </tr>
    </thead>
    <tbody>

     {

        for $row at $count in $x
        
        where  $row/active = 'yes'
        let $marriedpeople := if ($row/maritalStatus = 'MFS') then 'MFS' else 'MFJ'
        
        let $fSalary := format-number($row/salary, "$,000.00")
        order by number($row/salary) descending
        return

      <tr>
        <td >{$row/rowNo/text()}</td>
        <td >{$row/emp/text()}</td>
        <td>{$fSalary}</td>
        <td>{$row/state/text()}</td>
        <td>{$row/age/text()}</td>
        <td>{$marriedpeople}</td>
       
      </tr>
     

       }     
    </tbody>
  </table>
</div>

</body>
</html>
