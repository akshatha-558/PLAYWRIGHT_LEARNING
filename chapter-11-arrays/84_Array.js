// Creating Arrays// Array literal (preferred)
let browsers = ["Chrome", "Firefox", "Safari"];
console.log(browsers[0, 1]); //does not access both indexes 0 and 1.The comma operator evaluates both expressions and returns the last value.

// Array constructor
let scores = new Array(3);// here the 3 is length
scores[0] = 1;
scores[1] = 1;
scores[2] = 1;
console.log(scores);

let scores2 = new Array(1, 2, 3);
console.log(scores2);

let numbers = new Array(100, 200, 300, 400);//0-3: 4
console.log(numbers);

//2-Array.of 
let test = Array.of(10, 20, 30, 40, 50);
console.log(test);

// Array.from()
let chars = Array.from("hello");
// ["h", "e", "l", "l", "o"]
console.log(chars);

// let numbers1 = Array.from("123456789");
// console.log(numbers1);