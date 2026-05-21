//Problem: Given a bug's impact score (1–10), classify the severity.
// 9–10 → Critical(block release)
// 7–8 → High
// 4–6 → Medium
// 1–3 → Low
// Anything else → Invalid score


let bugSeverity = 9;

if (bugSeverity >= 9 && bugSeverity <= 10) {
    console.log("Severity: Critical - Block release");
} else if (bugSeverity >= 7 && bugSeverity <= 8) {
    console.log("Severity: High");
} else if (bugSeverity >= 4 && bugSeverity <= 6) {
    console.log("Severity: Medium");
} else if (bugSeverity >= 1 && bugSeverity <= 3) {
    console.log("Severity: Low");
} else {
    console.log("Invalid score");
}