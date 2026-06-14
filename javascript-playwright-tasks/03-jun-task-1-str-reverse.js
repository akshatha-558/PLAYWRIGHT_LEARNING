// ✅ String Reverse | Palindrome Program

// Given a string , Reverse it and print true if they are same.

// Madam is palindrome, pramod is not
//like EAT:TEA
//FROM:MORE


function isPalindrome(str) {
    let reversed = "";

    for (let i = str.length - 1; i >= 0; i--) {
        reversed += str[i];
    }

    console.log("Reversed String:", reversed);
    return str.toLowerCase() === reversed.toLowerCase();
}

console.log(isPalindrome("TEST"));  // true
console.log(isPalindrome("EAT")); // false