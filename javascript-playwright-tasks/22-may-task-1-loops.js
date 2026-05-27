// ✅ Triangle Classifier:

// Write a program that classifies a triangle based on its side lengths. Given three input values representing the lengths of the sides, determine if the triangle is equilateral (all sides are equal), isosceles (exactly two sides are equal), or scalene (no sides are equal). Use an if-else statement to classify the triangle.

// Side lengths of triangle
let a = 5;
let b = 5;
let c = 3;
if (a == b && b == c) { //a == b → 5 == 5 → true b == c → 5 == 3 → false Since both conditions are not true together, the answer is false.
    console.log("equilateral traingle")
}
else if (a == b || b == c || a == c) { //a == b → 5 == 5 → true Since one condition is true, JavaScript enters this block.
    console.log("isosslace triangle")
}
else {
    console.log("Scalene triangle")
}



// a	b	c	Output
// 5	5	5	Equilateral Triangle
// 5	5	3	Isosceles Triangle
// 3	4	5	Scalene Triangle


// Flow
// Start
//   ↓
// Input a, b, c
//   ↓
// Are all sides equal?
//   ↓ Yes → Equilateral
//   ↓ No
// Are any two sides equal?
//   ↓ Yes → Isosceles
//   ↓ No → Scalene
// End