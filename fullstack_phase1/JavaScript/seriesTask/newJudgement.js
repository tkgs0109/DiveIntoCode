let points = [60, 100, 80, 80, 70, 80];

function get_achievement(points){
	let sum = 0;
	let number = points.length;
	let maxPoint = 100 * number;
	for(let i=0; i<number; i++){
		sum = sum + points[i];
	}
	if(sum >= 0.8 * maxPoint){
		return "A";
	}else if(sum >= 0.6 * maxPoint){
		return "B";
	}else if(sum >= 0.4 * maxPoint){
		return "C";
	}else{
		return "D";
	}
}

// function get_pass_or_failure(x, y, z){
// 	if(x >= 60 && y >= 60 && z >= 60){
// 		return "合格";
// 	}
// 	else{
// 		return "不合格";
// 	}
// }

// function judgement(x, y, z){
// 	let achievement = get_achievement(x, y, z);
// 	let pass_or_failure = get_pass_or_failure(x, y, z);
// 	return `あなたの成績は${achievement}です。${pass_or_failure}です!`;
// }

console.log(get_achievement(points));