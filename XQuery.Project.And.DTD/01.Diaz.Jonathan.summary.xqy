(: xpath:  https://www.w3schools.com/xml/xpath_syntax.asp
  
   given:  01.lastname.firstname.summary.xqy
   email:  01.lastname.firstname.summary.html
   
   Please email both files xqy and html
       1) Due Date Friday 12.14.2018 5:00 pm
       2) Email both files no zip to 01_Summ.fv0z9iomosg40q37@u.box.com
:)
let $x := doc("2017.MarginalTaxes.final.xml")
let $totalCount := $x/data/taxes/tax
let $femaleCount  := $x/data/taxes/tax[gender = 'female']
let $maleCount  := $x/data/taxes/tax[gender = 'male']
let $salariesLessThanCount  := $x/data/taxes/tax[salary < 90000.00 ]
let $salariesGreaterThanCount  := $x/data/taxes/tax[salary > 90000.00 ]
let $peopleNCCount  := $x/data/taxes/tax[state = 'NC'] 
let $peopleNYCount  := $x/data/taxes/tax[state = 'NY']    
let $peopleFLCount  := $x/data/taxes/tax[state = 'FL']        


let $rules := $x/data/rules/marginalTaxes/marginalTax
return 
<html lang="en">
<head>
  <title>Summary</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">0</script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">0</script>
</head>
<body>

<div class="container">
  <h2>Summary Information</h2>
  <a href="#">Number of Rules <span class="badge">{count($rules)}</span></a><br/>
  <hr />  
  <a href="#">Number of Females <span class="badge">{count($femaleCount)}</span></a><br/>
  <a href="#">Number of Males <span class="badge">{count($maleCount)}</span></a><br/>
  <a href="#">Number of Salaries less than 90k <span class="badge">{count($salariesLessThanCount)}</span></a><br />
  <a href="#">Number of Salaries greater than 90k <span class="badge">{count($salariesGreaterThanCount)}</span></a><br />
  <a href="#">Number of people in NC (North Carolina) <span class="badge">{count($peopleNCCount)}</span></a><br />
  <a href="#">Number of people in NY (New York) <span class="badge">{count($peopleNYCount)}</span></a><br />
  <a href="#">Number of people in FL (Florida) <span class="badge">{count($peopleFLCount)}</span></a><br />
  <hr /> 
  <a href="#">Total number <span class="badge">{ count($totalCount)}</span></a><br/>
</div>
</body>
</html>