// filename: salary2.js

var employees = [
    {id: "a001", hoursworked: 40, hourlywage: 10},
    {id: "a002", hoursworked: 41, hourlywage: 10},
    {id: "a003", hoursworked: 42, hourlywage: 10},
    {id: "a004", hoursworked: 43, hourlywage: 10},
    {id: "a005", hoursworked: 44, hourlywage: 10},
    {id: "a006", hoursworked: 45, hourlywage: 10},
    {id: "a007", hoursworked: 46, hourlywage: 10},
];



var ot = function (row) {
    return row.hoursworked > 40;
}

function ot2 (row) {
    return row.hoursworked > 40;
}


employees
.filter( e => e.hoursworked > 40)  // predicate
.forEach(e => {
    console.log(e);
});