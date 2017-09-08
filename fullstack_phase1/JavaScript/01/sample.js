console.log(123);

let i = 0;
while(i<10){
    console.log(i);
    i++;
}

let sample = ["test", "sample", "data"];
console.log(sample);

let sample2 = [1,[2,3,4]];
console.log(sample2);

sample2[10]="飛び越した値";
console.log(sample2);
console.log(sample2.length);

let sampleHash = {
    hoge: 'hogehoge',
    fuga: 'fugafuga'
};

console.log(sampleHash.hoge);

let arr = {
    hoge: 'hogehoge',
    fuga: 'fugafuga',
    moga: {mogamoga: 'mogamogamoga'}
};

console.log(arr.moga);
console.log(arr.moga.mogamoga)