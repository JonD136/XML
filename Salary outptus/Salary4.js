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


var age = 100;
var func = function(x) {
    console.log(x);
}

func(100);
func(200);
func(300);
func(400);

employees.forEach(function(x) {
    console.log(x);
});

console.log("1-----");



employees.forEach(func);


console.log("2-----");


employees.forEach(booboo => console.log(booboo) );
