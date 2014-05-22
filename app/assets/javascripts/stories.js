$(document).ready(function(){
	$('.next-page-link').on('click',function(e){
		e.preventDefault();
		$(this).parent().removeClass('show-page').addClass('hide-page');
		console.log('hidden page...');
		var newPageNum = $(this).data('pagenumber');
		$(".container").find("[data-page='" + newPageNum + "']").removeClass('hide-page').addClass('show-page');
		console.log('showing new page...');
	});

	$('.previous-page-link').on('click',function(e){
		e.preventDefault();
		$(this).parent().removeClass('show-page').addClass('hide-page');
		console.log('hidden page...');
		var newPageNum = $(this).data('pagenumber');
		$(".container").find("[data-page='" + newPageNum + "']").removeClass('hide-page').addClass('show-page');
		console.log('showing new page...');
	});

});