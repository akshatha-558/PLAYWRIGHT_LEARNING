let browser = "Firefox";
switch (browser) {
    case "chrome":
        console.log("Chromium Project!");
    case "edge":
        console.log("Chromium Project!");
    case "brave":
        console.log("Chromium Project!");
    case "opera":
        console.log("Chromium Project!");
        break;
    case "Firefox":
        console.log("Mozilla Project!");
        break;
    case "Safari":
        console.log("Apple browser — uses JavaScriptCore engine");
        break;
    default:
        console.log("Unknown browser — manual testing needed");
}