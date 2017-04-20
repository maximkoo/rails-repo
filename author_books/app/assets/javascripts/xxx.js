$(function(){
	// alert('called-1');
	$("#programmers_search input").keyup(function(){
		// alert('called-2');
		$.get($("#programmers_search").attr("action"), $("#programmers_search").serialize(), null, "script");
		return false;
	});
});