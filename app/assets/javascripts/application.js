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

  $("#flash").delay(2000).fadeOut();


  
  $('[type=checkbox]').change(function(e){

    $(e.target).closest('tr').toggleClass('success');

    var checked_count = $('[type=checkbox]:checked').length;
    var total_checks = $('[type=checkbox]').length;
    $('.check-stats').html(checked_count + "/" + total_checks);
    
  });

  var g = new JustGage({
    id: "gauge", 
    value: 67, 
    min: 0,
    max: 100,
    title: "Progress"
  }); 



});
