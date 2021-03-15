let $x := doc("2017.MarginalTaxes.final.xml")/data/rules/marginalTaxes
return
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">0</script>
</head>
<body>

<div class="container">
  <h2>Basic List Group</h2>
 <ul class="list-group">
  {
for $row in $x
return
  
 
    <li class="list-group-item">{data($row/@year)} </li>
    <li class="list-group-item">Second item</li>
    <li class="list-group-item">Third item</li>
  }
  
  </ul>
  


</div>
  
</body>

</html>