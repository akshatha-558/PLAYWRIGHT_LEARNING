let x = 10;
switch (x) {
    case 10:
        let b1 = 1;
        console.log(b1);
        break;
    case 10:
        let b2 = 2;
        console.log(b2);
        break;
    default:
        console.log("d");

}

// IT will allow you to have the duplicate case with first as the usage.



//Flow
// x = 10
//    ↓
// case 10 ✅
//    ↓
// b1 = 1
// print 1
//    ↓
// break
//    ↓
// switch ends