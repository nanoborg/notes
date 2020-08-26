//=================
//  FOR LOOP
//=================

for (i = 0; i <= 20; i++) {
    if (i % 2 === 0) {
        console.log(i+" is even")

    } else {
        console.log(i+" is odd")
    }
}


//=================
//  WHILE LOOP
//=================
// used when not knowing the amount of times to loop
// executing blocks of code with an increment

var i = 0;

while (i <= 20) {
    if (i % 2 === 0) {
        console.log(i+" is even");
    } else {
        console.log(i+" is odd");
    } 
    i = i+1;
}

//=================
//   ARRAY LOOP
//=================
array.forEach(function(elem, index, array) {
    console.log(`elem:${elem}, index: ${index}, arry: ${array}`)
    
    })

array.forEach(elem => {
    console.log(elem)
});