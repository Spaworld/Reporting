$(function () {
  $('#datetimepicker1, #datetimepicker2, #datetimepicker3').datetimepicker({
    format: "YYYY-MM-DD"
  });

  $('#single_date').change(function(){
    this.checked ? $('#datetimepicker2, #ending-point-header').fadeOut(500) : $('#datetimepicker2, #ending-point-header').fadeIn(500)
  });

});


