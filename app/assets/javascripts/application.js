// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .



$(function() {
  var validate = function (value){
    return (value === null || value === "" || value.length > 140) ? false : true;
  };

  $("#tweet_content").on("blur", function(){
    var errorElement = $("#tweet_error_field");
    validate($("#tweet_content")[0].value) ? errorElement.addClass('hide') : errorElement.removeClass('hide');
  });
});



