$(document).ready(function() {
  $("#travel_state_origin_id").change(function() {
     getOriginCitiesByState("id="+$("#travel_state_origin_id").val());
  });
  $("#travel_state_destination_id").change(function() {
    getDestCitiesByState("id="+$("#travel_state_destination_id").val());
  });
 });

 function getOriginCitiesByState(id) {
   $.getJSON("/cities_by_state", id, function(j) {
     var options = '<option value="">SELECIONE A CIDADE</option>';
     $.each(j.cty, function(i, item) {
       options += '<option value="' + item.id + '">' + item.n + '</option>';
     });
     $("#travel_origin_id").html(options);
   });
 }

 function getDestCitiesByState(id) {
  $.getJSON("/cities_by_state", id, function(j) {
    var options = '<option value="">SELECIONE A CIDADE</option>';
    $.each(j.cty, function(i, item) {
      options += '<option value="' + item.id + '">' + item.n + '</option>';
    });
    $("#travel_destination_id").html(options);
  });
}
