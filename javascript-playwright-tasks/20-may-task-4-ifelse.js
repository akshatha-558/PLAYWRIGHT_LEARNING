// Question 4 — Build Health Reporter
// Problem: Given the percentage of test cases passed in a CI build, report build health.
// 100 % → Green Build
// 90–99 % → Stable(investigate failures)
// 70–89 % → Unstable
// Below 70 % → Broken Build(block deployment)


let buildHealth = 65;

if (buildHealth === 100) {
    console.log("🟢 Green Build");
} else if (buildHealth >= 90 && buildHealth <= 99) {
    console.log("🟡 Stable — Investigate failures");
} else if (buildHealth >= 70 && buildHealth <= 89) {
    console.log("🟠 Unstable");
} else {
    console.log("🔴 Broken Build — Block deployment");
}