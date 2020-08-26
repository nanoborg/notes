console.log("Array info")

arr = []
numbers = [1,2,3,4,5]
numbers2 = [1,2,3,4,5]

var add = function (num) {
    num + 1
    return
}

arr.forEach(add) //loop through the array


// array methods

arr.join('') // turn array into string using the separator
arr.concat(numbers2)// create new array joining two array into one
arr.indexOf("string") // return index of a certain element, if not available return -1
arr.pop(0) // remove element using index number
arr.push()// push what ever data into the last position
arr.shift(0)// remove element from start of the array
arr.unshift()// add element to start of the array
arr.slice(0,3)//create new array. include and not include.
arr.sort(fn)// converts to string - default ascending order
arr.reverse()// reverse the order of the array
arr.includes("element")//return boolean value if in array.
arr.filter( fn() )// new array, if a condition is evaluated true
Array.isArray(arr) // check to see if array is an array boolean

//=================
//  ARRAY LOOP
//=================
arr.forEach(function(elem, index, array) {
    console.log(`elem:${elem}, index: ${index}, arry: ${array}`)
    
    })

arr.forEach(elem => {
    console.log(elem)
});

