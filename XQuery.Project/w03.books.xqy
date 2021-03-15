for $x in doc("w3schools.books.xml")/bookstore/book
where $x/price>30
return $x/title 