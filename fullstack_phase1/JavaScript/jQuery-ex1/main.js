$(function(){
	$('.tab li').click(function(){
		$('.tab li').removeClass('select');
			// 全てのタブからselectクラスを取り除く
		$(this).addClass('select');
			// クリックされたタブにselectクラスを付与
		$('.content li').addClass('hide');
			// contentクラスliタグに、hideクラスを付与
		const index = $('.tab li').index($(this))
			// 何番目の子要素か調べる
		$('.content li').eq(index).removeClass('hide');
			// index値から該当するコンテンツを取得、hideクラスを除去
	});
});