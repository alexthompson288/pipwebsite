$(document).ready(function(){
	console.log('document reading');
	$('#myTab a').click(function (e) {
  		e.preventDefault()
  		$(this).tab('show')
	});

	

	$('.show-more-text').on('click', function(e){
		console.log('click');
		e.preventDefault();
		console.log('click1');
		$(this).parent().next().toggle();
	});

	$('#testclick').on('click', function(){
		console.log('hello click');
	});

	$('.btn-enormous').on('hover',function(){
		console.log('touch');
		$(body).css("background-color","yellow");
	});

	$('.reveal-stage-info').on('click', function(e){
		e.preventDefault();
		var stagestring = $(this).data('stage');
		$('.stage-container-box').hide();
		$('#'+stagestring).show();
	});

	$('.show-all-games').on('click',function(e){
		e.preventDefault();
		$(this).parent().parent().parent().find('.whole-learninggames-show-container-box').toggle();
	});

	// $('#wrapper').dotdotdot();

});