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

    <!--   
        Instructions (Due Date 2018.08.12 11:00 am)

         1. Use highlight class mark the salaries greater then 100,000 
         2. The source of data is file widget.company.xml
         3. Email 02.grid.lastname.firstname.xqy and 02.report.lastname.firstname.html
         4. Display full name, branch, state, and salary. Highlight the salaries greater then 100,000
         5. Show only Branch 1 and 2
         6. Email file to 2018_12.o1hfd0i4w62yk1no@u.box.com

    -->

  
<style>
     .grid {{
      border: solid 1px black;
      margin: 1px;
    }}
         
    .highlight {{
      border: solid 1px black;
      background-color: black;
      color: white;  
      font-weight: 400;    
    }}

    body {{
      margin-top: .5in;
      margin-left: .5in;
      margin-right: .5in;
    }}

  </style>
  
</head>

<body>
       

  <div class="container-fluid">
    <h1>Branch 1 and 2</h1>
    <p>Display full name, branch, state, and salary. Highlight the salaries greater then 100,000</p>
    
    
      
    
    <div class="row">
      <div class="col grid">full name</div>
      <div class="col grid">branch</div>
      <div class="col grid">state</div>
      <div class="col grid">salary</div>
    </div>
   

{
  for $row at $count in $x
  
  where $row/@branch='1' or $row/@branch='2'
  let $j := if ($row/salary > 100000) then 'highlight' else ' '
   
    return

    <div class="row">
      <div class="col grid">{$row/fullName/text()}</div>
      <div class="col grid">{data($row/@branch)}</div>
      <div class="col grid">{$row/address/state/text()}</div>
      <div class="col grid {$j}">{$row/salary/text()}</div>
    </div>

}
    
   
  </div>
  
</body>
</html>