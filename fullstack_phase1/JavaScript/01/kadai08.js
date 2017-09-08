function average01(x, y, z){
    let ave;
    ave = (x + y + z) / 3;
    return ave;
}

function bigger(x, y){
    if (x => y){
        return x;
    }
    else if (x < y){
        return y;
    }
    else{
        return "error!";
    }
}

let num = average01(10, 20, 30);
let num2 = bigger(10,20);
let num3 = bigger(20,10);
let num4 = bigger(10,10);

console.log(num);
console.log(num2);
console.log(num3);
console.log(num4);
