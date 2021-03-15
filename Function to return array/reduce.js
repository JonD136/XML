// name file: reduce.js

var numbers = [1,2,3,4,5,6,7,8];

var logic = function(a,v){
    console.log({a,v});
    return a + v;
};

var total = numbers.reduce(logic);
console.log({total});