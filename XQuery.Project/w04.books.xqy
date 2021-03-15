for $x in doc("w3schools.books.xml")/bookstore/book
where $x/price>30
order by $x/title
return $x/title 