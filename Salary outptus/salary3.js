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


var payCheck = function(row){
    var money = {salary: 0, overtime: false};
    money.salary = row.hoursworked * row.hourlywage;
    return money;
}

employees
.filter( e => e.hoursworked > 40)  // predicate
.forEach(e => {
    e.payinfo = payCheck(e);
    console.log(e);
});