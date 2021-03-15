let $x := doc("2017.MarginalTaxes.final.xml")/data/rules/marginalTaxes/marginalTax
return
<html lang="en">
<head>
  <title>Joanthan Diaz Bootstrap Example</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">0</script>
</head>
<body>
 
<div class="container">
  <h2>Jonathan Diaz Basic List Group</h2>
 
    
  <ul class="list-group">
  {
  for $row in $x
    let $year := $row/@year
    let $t :=  $row/@code  
    let $n :=  $row/@no
    let $y := if (data($row/@code = 'S')) then 'Single' else ''
    let $y := if (data($row/@code = 'MFS')) then 'Married Filing Single' else $y
    let $y := if (data($row/@code = 'MFJ')) then 'Married Filing Jointly' else $y
    let $y := if (data($row/@code = 'QW')) then 'Qualified Window' else $y
    let $y := if (data($row/@code = 'HH')) then 'Head of House Hold' else $y
    let $r :=   format-number($row/@marginalTaxRate, "0.000")
    let $s :=  format-number($row/start, "$,000.00") 
    let $e :=  format-number($row/end, "$,000.00") 
    return
    <li class="list-group-item">Year {data($year)}, 
                Start {$s}, 
                 End {$e}, 
                Code {data($t)}- {data($y)} ,
                Tax Rate {$r}</li>
    
  }
  </ul>
  
</div>
 
</body>
</html>