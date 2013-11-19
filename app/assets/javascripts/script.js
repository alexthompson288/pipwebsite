$(document).ready(function(){
	console.log('document reading');
	$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})

	$('.btn-enormous').on('hover',function(){
		console.log('touch');
		console.log($(body));
		$(body).css("background-color","yellow");
	});




});