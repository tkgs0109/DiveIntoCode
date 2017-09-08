let sample = [
    { name: "hoge", content: "fuga"},
    { name: "hage", content: "fuge"}
    ];

let numbers = [100, 200, 300]

let test =  [
    {name: "taro",score: 87},
    {name: "ziro",score: 75},
    {name: "tosio",score: 43},
    {name: "hanako",score: 91},              
    {name: "saburo",score: 59}
    ];

let arr = [2,5,3,8,4,1];
let arr2 = ["我々","は","ｳﾁｳ","ｼﾞﾝ","ﾀﾞ"];

let names = sample.map(n => n.name);
console.log(names);

let big_numbers = numbers.map(n => n*5);
console.log(big_numbers);

let high_score = test.filter(n => n.score > 70 );
console.log(high_score);

let sum = arr.reduce((top, next) => top += next, 0 );
console.log(sum);

let sum2 = arr2.reduce((top, next) => top += next, "");
console.log(sum2);
