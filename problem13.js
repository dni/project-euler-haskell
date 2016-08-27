var bigInt = require("big-integer");
var fs = require("fs");


var file = fs.readFileSync("./problem13.txt");
var ints = file.toString().split("\n");
var sum = bigInt(0);

ints.forEach(function(number){
  sum = bigInt(sum).add(number);
});

console.log(sum.toString().slice(0,10));
