$(function() {
  var header = $(".navbar");
  
  $(window).on("scroll", function(e) { 
    console.log($(window).scrollTop());
    if ($(window).scrollTop() > 100) {
      header.addClass("fix-header");
    } else {
      header.removeClass("fix-header");
    } 
  });
});



