
(: source: https://www.w3schools.com/xml/xquery_flwor_html.asp :)
<ul>
{
for $x in doc("w3schools.books.xml")/bookstore/book/title
order by $x
return <li>{data($x)}</li>
}
</ul> 