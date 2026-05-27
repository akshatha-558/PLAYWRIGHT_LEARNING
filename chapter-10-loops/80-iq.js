let i = 0;
do {
    console.log(i);
    i--;
} while (i > 0);

// i = 0
// ↓
// do block runs FIRST
// ↓
// print 0
// ↓
// i--
// ↓
// i = -1
// ↓
// -1 > 0 ❌ false
// ↓
// STOP