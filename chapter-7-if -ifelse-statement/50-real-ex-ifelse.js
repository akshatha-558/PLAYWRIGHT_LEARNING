let age = 18;
if (age >= 18) {
    console.log("you are an adult")
} else {
    console.log("you are not an adult")
}

// app.vwo.com -> viewer, editor or admin -> 

let isloggedin = true;
let userrole = "xyz";

if (isloggedin) {

    if (userrole === "admin") {
        console.log("Admin can do all the things");
    }
    else if (userrole === "editor") {
        console.log("Editor can only edit");
    }
    else if (userrole === "viewer") {
        console.log("Only view");
    }
    else {
        console.log("Might be a guest");
    }

} else {
    console.log("User is not logged in");
}