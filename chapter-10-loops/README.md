# Chapter 10 — Loops

**for · while · do-while · continue · IQ traps**

---

## Files

| # | File | Topic | Runs |
|:-:|------|-------|:------:|
| 71 | `71_for_loop.js` | Why loops exist — replacing manual repetition | `node chapter_10_Loops/71_for_loop.js` |
| 72 | `72_for_loop.js` | For loop with `<=` — runs 6 times (0 through 5) | `node chapter_10_Loops/72_for_loop.js` |
| 73 | `73_for_loop.js` | Loop boundaries: `<` vs `<=` — 10 vs 11 iterations | `node chapter_10_Loops/73_for_loop.js` |
| 74 | `74_loops_iq.js` | For + if/else — conditional logic inside loop | `node chapter_10_Loops/74_loops_iq.js` |
| 75 | `75_for_in_of_each_loops.js` | While loop — retry logic | `node chapter_10_Loops/75_for_in_of_each_loops.js` |
| 76 | `76_while_loop.js` | While loop — three parts: init, condition, update | `node chapter_10_Loops/76_while_loop.js` |
| 77 | `77_do_while.js` | do-while — guaranteed one execution | `node chapter_10_Loops/77_do_while.js` |
| 78 | `78_do_while.js` | do-while retry pattern | `node chapter_10_Loops/78_do_while.js` |
| 79 | `79_iq.js` | While countdown (`i--`) | `node chapter_10_Loops/79_iq.js` |
| 80 | `80_iq.js` | do-while off-by-one trap | `node chapter_10_Loops/80_iq.js` |
| 81 | `81_iq.js` | `continue` — skip current iteration | `node chapter_10_Loops/81_iq.js` |
| 82 | `82_iq.js` | do-while infinite-loop risk (no update) | `node chapter_10_Loops/82_iq.js` |

---

## Key Concepts

### The Three Loop Types

| Loop | Condition check | Minimum executions | Use when |
|:--|:--|:--:|:--|
| `for` | Before each iteration | 0 | Known iteration count |
| `while` | Before each iteration | 0 | Unknown count, maybe zero |
| `do-while` | After each iteration | **1** | Must run at least once |

### For Loop Anatomy

```
for (initialization; condition; update) {
    // body
}
```

```js
// 72_for_loop.js
for (let i = 0; i <= 5; i++) {
    console.log(i); // 0, 1, 2, 3, 4, 5 (6 iterations)
}
```

**Common traps:**
- `i < 5` → 5 iterations (0 to 4)
- `i <= 5` → 6 iterations (0 to 5)
- `i > 1` with `i = 0` → never runs (condition already false)

### While Loop Anatomy

```js
// 76_while_loop.js
let attempt = 0;        // init
while (attempt < 3) {   // condition
    console.log(attempt);
    attempt++;          // update — DON'T FORGET THIS
}
```

**Without the update (`attempt++`) → infinite loop.**

### Do-While Loop Anatomy

```js
// 77_do_while.js
let a = 10;
do {
    console.log(a);    // runs ONCE even though a < 10 is false
    a++;
} while (a < 10);
```

**Key: body always executes at least once.** Condition is checked *after*.

### Continue

```js
// 81_iq.js
for (let i = 0; i < 3; i++) {
    if (i === 1) continue;  // skip this iteration
    console.log(i);          // 0, 2
}
```

`continue` skips the **rest** of the current iteration — next one still runs.

---

## IQ Traps

| File | Trap | What happens |
|:--|:--|:--|
| `79_iq.js` | Decrementing while | Countdown works: `i--` instead of `i++` |
| `80_iq.js` | do-while off-by-one | `let i = 0; do { console.log(i); i--; } while (i > 0);` → prints 0 once, then condition is false |
| `82_iq.js` | Missing update | `do { console.log(n); } while (n < 3);` with no `n++` → infinite loop if condition stays true |

---

## Output Reference

```bash
$ node chapter_10_Loops/72_for_loop.js
0
1
2
3
4
5

$ node chapter_10_Loops/76_while_loop.js
0
1
2
Modi will do 15+ years   # (printed 15 times)

$ node chapter_10_Loops/77_do_while.js
10

$ node chapter_10_Loops/78_do_while.js
Execute a code!
Retrying..... 0
Execute a code!
Retrying..... 1
Execute a code!
Retrying..... 2

$ node chapter_10_Loops/79_iq.js
5
4
3
2
1

$ node chapter_10_Loops/80_iq.js
0

$ node chapter_10_Loops/81_iq.js
0
2

$ node chapter_10_Loops/82_iq.js
1
```

---

**← [Back to parent README](../README.md)**