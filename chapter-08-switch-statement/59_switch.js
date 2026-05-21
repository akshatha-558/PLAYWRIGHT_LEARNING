//Days

let day = 2;
switch (day) {
    case 1:
        console.log("Monday");
        break;
    case 2:
        console.log("Tuesday")
    //break; // 
    case 3:
        console.log("Wednesday");
        break; //stop so it will stops here
    case 4:
        console.log("Thursday");
        break;
    case 5:
        console.log("Friday");
        break;
    case 6:
        console.log("saturday");
        break;
    case 7:
        console.log("sunday");
        break;
    default:
        console.log("not sure which day exists")
}


/*day = 2
   ↓
case 1 ❌
   ↓
case 2 ✅
   ↓
prints Tuesday
   ↓
no break
   ↓
case 3 runs automatically
   ↓
prints Wednesday
   ↓
break stops switch*/