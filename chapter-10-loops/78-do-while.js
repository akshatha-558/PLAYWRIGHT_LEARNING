let retry = 0;
do {
    console.log("execute code");
    console.log("Retrying code", retry);
    retry++
} while (retry < 3)