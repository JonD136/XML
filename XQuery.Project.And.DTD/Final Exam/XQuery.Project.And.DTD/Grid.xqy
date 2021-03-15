let $x := doc("2017.MarginalTaxes.final.xml")/data/rules/marginalTaxes/marginalTax
return
<children>
{
    for $row in $x
    let $t :=  $row/@code  
    let $n :=  $row/@no
    let $s :=  format-number($row/start, "$,000.00") 
    let $e :=  format-number($row/end, "$,000.00") 
    return
    <Label prefHeight="56.0" prefWidth="172.0"  
            styleClass="mgLabel" 
            text="code: {$t}, range: {$s} - {$e} " wrapText="true" userData="{$n}">
        
    </Label>
}
</children>