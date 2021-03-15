<ul>
{
for $x in doc("w3schools.books.xml")/bookstore/book/title
order by $x
return <li>{$x}</li>
}
</ul> 