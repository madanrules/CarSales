ready = function(){
	$('#sort_by_car_name').on('change', function(event) {
    $.ajax({
	    type: "get",
	    url: "/search_model_type/" + $(this).val(),
	    format: "js",
	    dataType: "script"
    });
  });

  $('#sort_by_date').on('change', function(event) {
    $.ajax({
	    type: "get",
	    url: "/search_date/" + $(this).val(),
	    format: "js",
	    dataType: "script"
    });
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);