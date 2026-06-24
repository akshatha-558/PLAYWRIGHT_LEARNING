// MAC - DARWIN
// WINDOWS - WIN32
// LINUX - LINUX

// x64
// arm64

const pkg = require('playwright/package.json');
console.log('Playwright:', pkg.version);
console.log('Node:', process.version);
console.log('Platform:', process.platform);
console.log('Arch     :', process.arch);