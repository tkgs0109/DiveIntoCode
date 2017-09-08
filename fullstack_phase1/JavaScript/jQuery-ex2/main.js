/* global $ */
$(function(){
	$('#accordion dd').hide();
		// アコーディオンを閉じる
	$('#accordion dt').click(function(e){
		$(this).next('dd').slideToggle();
	});
});