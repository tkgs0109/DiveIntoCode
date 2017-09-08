function sample01(){
    console.log("Hello");
    console.log("World");
}

function sample02(){
    return "Hello World";
}

function sample03(name = "Mr.宮岡! ", place = "Dive into Code!!"){
    return "Hello " + name + "Welcome to " + place;
}

const noro = {
    name    :   "hiroyoshi",
    speak   :   function() {return "Dive into Code!!";},
}

sample01();

let comment = sample02();
let method = sample02;
console.log(comment);
console.log(method);
console.log(method());

console.log(sample03("Mr.野呂! ", "Dive into Code!!"));
console.log(sample03());

console.log(noro.speak());