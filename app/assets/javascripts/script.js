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

	// $('#wrapper').dotdotdot();

});