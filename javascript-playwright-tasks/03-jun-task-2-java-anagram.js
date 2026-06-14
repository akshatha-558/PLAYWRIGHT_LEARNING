// ✅ Java Anagrams
//TOP:POT
//EARN:NEAR
//LIST:SILT
//SILENT:LISTEN 

function isAnagram(str1, str2) {
    if (str1.length !== str2.length) {
        return false;
    }

    let count = {};

    // Count characters from first string
    for (let char of str1.toLowerCase()) {
        count[char] = (count[char] || 0) + 1;
    }

    // Reduce count using second string
    for (let char of str2.toLowerCase()) {
        if (!count[char]) {
            return false;
        }
        count[char]--;
    }

    return true;
}

console.log(isAnagram("TOP", "POT"));       // true
console.log(isAnagram("EARN", "NEAR"));     // true
console.log(isAnagram("LIST", "SILT"));     // true
console.log(isAnagram("SILENT", "LISTEN")); // true
console.log(isAnagram("TOP", "CAT"));       // false