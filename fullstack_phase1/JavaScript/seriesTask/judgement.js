function get_achievement(x, y, z){
	let sum = x + y + z;
	if      (sum >= 250){return "A";}
	else if (sum >= 200){return "B";}
	else if (sum >= 100){return "C";}
	else                {return "D";}
}

function get_pass_or_failure(x, y, z){
	if(x >= 60 && y >= 60 && z >= 60){
		return "合格";
	}
	else{
		return "不合格";
	}
}

function judgement(x, y, z){
	let achievement = get_achievement(x, y, z);
	let pass_or_failure = get_pass_or_failure(x, y, z);
	
	if(achievement === "A" && pass_or_failure === "合格"){
		return "最高です!";
	}else{
		return `あなたの成績は${achievement}です。${pass_or_failure}です!`;
	}
}

console.log(judgement(60, 100, 60));