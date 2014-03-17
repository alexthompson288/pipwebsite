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

	$('.show-homepage-video').on('click',function(e){
		e.preventDefault();
		$('.homepage-see-video').toggle();
	});

	$('a#check-price').click(function(e){
		e.preventDefault();
		$('#show-price').fadeOut();
		var numPipPads = $('#number-pippads').val();
		console.log(numPipPads);
		var numSoftware = $('#number-pipsoftware').val();
		var numStudents = $('#number-students').val();
		console.log('number of students: ' + numStudents);
		
		if(numPipPads < 10){
			var pipPadUnit = 100;
		}
		else if(numPipPads >= 10 && numPipPads < 50){
			var pipPadUnit = 100;
		}
		else if(numPipPads >= 50){
			var pipPadUnit = 100;
		}


		if(numSoftware < 10){
			var pipSoftware = 30;
		}
		else if(numSoftware >= 10 && numPipPads < 50){
			var pipSoftware = 25;
		}
		else if(numSoftware >= 50){
			
			var pipSoftware = 20;
		}


		if(numStudents < 10){
			var pipStudent = 30;
		}
		else if(numPipPads >= 10 && numPipPads< 50){
			var pipStudent = 25;
		}
		else if(numPipPads >= 50){
			var pipStudent = 20;
		}

		var pricePipPad = pipPadUnit * numPipPads;
		var pricePipSoftware = pipSoftware * numSoftware;
		var pricePipStudent = pipStudent * numStudents; 
		var totalToday = pricePipPad + pricePipSoftware + pricePipStudent;
		var totalYear1 = pricePipStudent;


		$('#pippad-unit').html(pipPadUnit);
		$('#pippad-total').html(pricePipPad);
		$('#software-unit').html(pipSoftware);
		$('#software-total').html(pricePipSoftware);
		$('#learner-unit').html(pipStudent);
		$('#learner-total').html(pricePipStudent);
		$('#total-today').html(totalToday);
		$('#total-year1').html(totalYear1);

		$('#show-price').fadeIn();
	});

	// $('#wrapper').dotdotdot();

});