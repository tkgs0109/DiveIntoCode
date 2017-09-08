let x = 3
let y = 3;

function scope_test01(x){
    return x + 6;
}

function scope_test02(){
    console.log(x);
    console.log(y);
}

console.log(scope_test01(4));

scope_test02();

{
  let block = 5;
  console.log(block);
}

console.log(block); /* エラーになる */