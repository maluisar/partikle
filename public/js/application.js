$(document).ready(function() {
  showMenu();
  showLogin();
  showLink();
  showRec();
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

var showRec = function() {
  $('.act-form').on('submit', function(event){
    event.preventDefault();

    var url = $(this).attr('action');
    var method = $(this).attr('method');
    var data = $(this).find('button').attr('value');

    $.ajax({
      url: url,
      method: method,
      data: data
    }).done( function(response){
      $(".selected-act").text(response)
    });
  });
};





