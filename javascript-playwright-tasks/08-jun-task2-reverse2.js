const rows = 3;

for (let i = 1; i <= rows; i++) {
    let pattern = "";

    // spaces
    for (let j = 1; j <= rows - i; j++) {
        pattern += " ";
    }

    // stars
    for (let k = 1; k <= (2 * i - 1); k++) {
        pattern += "*";
    }

    console.log(pattern);
}