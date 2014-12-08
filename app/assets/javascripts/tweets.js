// var TweetChecker  = function(){
//   var self = this;

//   this.validate = function (value){
//     return (value === null || value === "" || value.length > 140)? false : true;
//   },

//   this.checkInput = function (target, errorElement){
//     var value = target.value;

//     this.validate(value) ? errorElement.hide() : errorElement.show();

//   },

//   this.bindEvents = function(){
//     var target = $("#tweet_content")[0];
//     var errorElement = $(".tweet_error_field")[0];
//     target.blur(this.checkInput(target, errorElement));
//     target.focus(this.checkInput(target, errorElement));
//     target.change(this.checkInput(target, errorElement));

//   },

//   this.execute = function(){
//     this.bindEvents;
//   }
// }