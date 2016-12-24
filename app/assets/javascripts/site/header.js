$(function() {
  var header_height = 100;
  var header = $(".navbar");  
  var menu = '.nav.navbar-nav';
  
  //function to stick header on top of the page
  $(window).on("scroll", function(e) { 
    //console.log($(window).scrollTop());
    if ($(window).scrollTop() > header_height) {
      header.addClass("fix-header");
    } else {
      header.removeClass("fix-header");
    } 
  });

  $(".navbar").on("click", ".cake-icon", function(e){
    $('.nav.navbar-nav').toggleClass('visible-menu');
  })
});



