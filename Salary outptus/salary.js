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

console.log({size: employees.length});

for(var i = 0; i < employees.length; i++){
    if(employees[i].hoursworked > 40)
    console.log({row: employees[i] });
}

console.log("--------------------------");
employees
.filter( x => x.hoursworked > 40)
.forEach(e => {
    
    console.log(e);
});