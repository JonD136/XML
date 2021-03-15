let $x := doc("2017.MarginalTaxes.final.xml")/data/taxes/tax
return
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">0</script>
  <style>
    img.money{{
      width: 10px;
      height: 20px;
      padding: 1px;
    }}
  </style>
</head>
<body>

<div class="container">
  <h2>Dark Striped Table</h2>
  <p>Combine .table-dark and .table-striped to create a dark, striped table:</p>            
  <table class="table table-dark table-striped">
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
        
        let $s := if ($row/salary > 95000) then
                       <span>
                          <img class='money' src='money.03.png' ></img>
                            <img class='money' src='money.03.png' ></img>
                        </span>
                        else  
                        <span>
                            <img class='money' src='money.03.png' ></img>
                           
                        </span>
        
    
 

            
        let $state := if ($row/state = 'NY') then 'NY' 
                else if ($row/state = 'NC') then 'NC' else 'CT'
        where  $row/maritalStatus = 'S'
        where  $row/salary > 75000.00 
        let $fSalary := format-number($row/salary, "$,000.00")
        order by ($row/state) 
        return

      <tr>
        <td>{$row/rowNo/text()}</td>
        <td>{$row/emp/text()}</td>
        <td>{$s} - {$fSalary}</td>
        <td>{$state}</td>
        <td>{$row/age/text()}</td>
        <td>{$row/maritalStatus/text()}</td>
      </tr>

    }
      
      
    </tbody>
  </table>
</div>

</body>
</html>
