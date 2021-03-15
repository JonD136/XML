// filename: salary.js

var employees = [
    {id: "a001", hoursworked: 40, hourlywage: 10},
    {id: "a002", hoursworked: 41, hourlywage: 10},
    {id: "a003", hoursworked: 42, hourlywage: 10},
    {id: "a004", hoursworked: 43, hourlywage: 10},
    {id: "a005", hoursworked: 44, hourlywage: 10},
    {id: "a006", hoursworked: 45, hourlywage: 10},
    {id: "a007", hoursworked: 46, hourlywage: 10},
];

//filter - if statement

var func = function(row) {
    return row.hoursworked > 44;
}

employees.filter(f => f.hoursworked < 46).forEach(e => {
    var payCheck = e.hoursworked * e.hourlywage;
    e.money = payCheck;
    e.netPay = payCheck * .7;
    console.log(e)
} );


console.log("===========");
//console.log(employees[0]);


