$(document).ready(function() {
  showMenu();
  showLogin();
  showLink();
});

var showMenu = function(){
  $('.menu-container').on('click', function() {
    $('#index-menu').toggleClass('index-menu-on');
  });
};

var showLogin = function(){
  $('.menu-list').on('click', '#log-in', function(event){
    event.preventDefault();

    var listItem = $(this).parent();
    var url = $(this).attr('href');

    $.ajax({
      url: url
    }).done( function(response){
      (listItem).html(response);
    });
  });
};

var showLink = function(){
  $('.menu-list').on('click', '.log-in-title', function () {
    $(this).closest('.menu-list-item').html("<a id='log-in' href='/sessions/new'>Login</a></li>")
  });
};





