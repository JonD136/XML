// file: main.js

var counter = require("./counter.js");

var results = counter.countTo(10);
console.log({results});

var cb = function(data){
    console.log({data});
}
counter.countToA(cb, 15);

//another way

counter.countToA(function(data){
    console.log({data});
}, 11);

// another way

counter.countToA( e => console.log({e}), 7);
