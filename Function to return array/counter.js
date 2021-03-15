// file counter.js
/*

    objective is to create
    a function that returns
    1 to 20 in an array
    */

var counter = function(end) {
    var numbers = [];
    if (!end){
        end = 5;
    }
    for (var i = 0; i <= end; i++){
        numbers.push(i);
    }
    return numbers;
}

var counterA = function(callback,end) {

    // pasue for 1 second 
    var numbers = [];
    setTimeout(function(){
        numbers = counter(end);
        callback(numbers);
    }, 1000);

    return numbers;
}


// we export the function to make
// visable to teh otuside module
var exports = module.exports = {};
exports.countTo = counter;
exports.countToA = counterA;