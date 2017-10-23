$(document).ready(function() {
  showMenu();
});

var showMenu = function(){
  $('.menu-container').on('click', function() {
    $('#index-menu').toggleClass('index-menu-on');
  });
};



//   $('.menu-container').toggle(
//     function() {
//       $('.location-form').css("display", "inline-block");
//       $('.index-menu').css("display", "inline-block");
//     },
//     function() {
//       $('.location-form').css("display", "block");
//       $('.index-menu').css("display", "none");
//     });
// };






