$(function() {
	$('.loadCohort').click(function() {
		event.preventDefault();
		$('#jquerySwitcher').append($(this).text);
	});

});