// Question 5 — Login Lockout After Failed Attempts

// Problem: Track failed login attempts. Lock the account after 3 failed attempts.

let attempts = 3;

if (attempts === 0) {
    console.log("Login successful");
} else if (attempts > 0 && attempts < 3) {
    console.log(`${attempts} attempt${attempts > 1 ? 's' : ''} left before lockout`);
} else if (attempts >= 3) {
    console.log("🔒 Account Locked — Contact support");
} else {
    console.log("Invalid number of attempts");
}