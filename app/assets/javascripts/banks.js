$(document).ready(function(){
	$('.letterbank-button').on('click',function(){
		$('.alphabetbank').removeClass('show-page').addClass('hide-page');
		$('.wordbank').removeClass('show-page').addClass('hide-page');
		$('.keywordbank').removeClass('show-page').addClass('hide-page');
		$('.letterbank').removeClass('hide-page').addClass('show-page');
	});

	$('.alphabetbank-button').on('click',function(){
		$('.alphabetbank').removeClass('hide-page').addClass('show-page');
		$('.wordbank').removeClass('show-page').addClass('hide-page');
		$('.keywordbank').removeClass('show-page').addClass('hide-page');
		$('.letterbank').removeClass('show-page').addClass('hide-page');
	});
	$('.wordbank-button').on('click',function(){
		$('.alphabetbank').removeClass('show-page').addClass('hide-page');
		$('.wordbank').removeClass('hide-page').addClass('show-page');
		$('.keywordbank').removeClass('show-page').addClass('hide-page');
		$('.letterbank').removeClass('show-page').addClass('hide-page');
	});
	$('.keywordbank-button').on('click',function(){
		$('.alphabetbank').removeClass('show-page').addClass('hide-page');
		$('.wordbank').removeClass('show-page').addClass('hide-page');
		$('.keywordbank').removeClass('hide-page').addClass('show-page');
		$('.letterbank').removeClass('show-page').addClass('hide-page');
	});
});
