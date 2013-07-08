// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery_nested_form

$(function(){

  window.gauge = new JustGage({
    id: "gauge",
    value: 0,
    min: 0,
    max: 100,
    levelColors: ["feef00", "5bb65b"],
    title: "Progress"
  });


  $("#flash").delay(2000).fadeOut();

  // find all checkboxes and attach change event handler --> run all code inside when change event occurs
  $('[type=checkbox]').change(function(e){
// find the tr or row element that the checkbox is inside --> the closest thing thats a row and tonggle its class --> if it has success remove vice versa
    $(e.target).closest('tr').toggleClass('success');

    var checked_count = $('[type=checkbox]:checked').length;
    var total_checks = $('[type=checkbox]').length;
    $('.check-stats').html(checked_count + "/" + total_checks);

    window.gauge.refresh(checked_count/total_checks *100);

  });




});
