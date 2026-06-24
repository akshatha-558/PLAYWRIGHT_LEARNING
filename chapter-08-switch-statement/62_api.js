// You are working API Validation
// response Code - 200, 404, 401, 403.....404

let responseCode = 404;

switch (responseCode) {
    case 200: console.log(" 200 api are not matching");
        break;
    case 201: console.log("201 api are not maching");
        break;
    case 204: console.log("204 api are not maching");
        break;
    case 301: console.log("301 api are not maching");
        break;
    case 401: console.log("401 api are not maching");
        break;
    case 404: console.log("404 api are maching");
        break;
    default: console.log("invalid api");

}



//cond ->break->default