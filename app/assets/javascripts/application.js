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
//= require_tree .
//= require bootstrap-sprockets
//= require tinymce-jquery


$(document).ready(function(){
  
  // window_height = window.innerHeight;

  // header_height = $("nav").height();
  // footer_height = $("#full-footer").height();

  // remaining_height = window_height - header_height - footer_height;

  // string_height = remaining_height + "px";

  // $("#left-side").css({"min-height": string_height});

  resize_padding_for_footer();

  $(window).resize(function(event) {
    resize_padding_for_footer();
  });

  function resize_padding_for_footer(){
    if ( $("#footer").height() > 107 ){
      // something unusual is happening
      f_height = $("#footer").height();
      $("#full-content").css({"padding-bottom": f_height + 80 + "px"});
    }
    else{
      // we're back to normal
      $("#full-content").css({"padding-bottom": "90px"});
    }
  }

});