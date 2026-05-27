// Accessing & Modifying
let statuses = ["pass", "fail", "skip"];
console.log(statuses[0]);
console.log(statuses[2]);

console.log(statuses.at(-1));//reverse calling
console.log(statuses.at(-2));
console.log(statuses.at(-3));
// console.log(statuses.at(-4)); undefined

// Modifing the array
statuses[1] = "blocked";
console.log(statuses);