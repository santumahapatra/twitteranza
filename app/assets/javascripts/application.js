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
  var tweetContent = $("#tweet_content");
  var errorElement = $("#tweet_error_field");

  var validate = function (value){
    return (value === null || value === "" || value.length > 140) ? false : true;
  };

  var handleInput = function(){
    validate(tweetContent[0].value) ? errorElement.removeClass('hide') : errorElement.addClass('hide');
  };

  tweetContent.on("blur", function(){
    console.log(1);
    validate($("#tweet_content")[0].value) ? $("#tweet_error_field").addClass('hide') : $("#tweet_error_field").removeClass('hide');
    console.log(2 + $("#tweet_error_field") + $("#tweet_content")[0].value)
  });
  tweetContent.on("focus", handleInput());
  tweetContent.on("keypress", handleInput());
});



