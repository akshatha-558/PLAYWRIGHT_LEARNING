export default function log(message) {
    console.log("[LOG] - default " + message);
}

export function log(message) {
    console.log("[LOG] - named " + message);
}