$(document).on('ready', function () {
  $('.menu_user').on('click', function (e) {
    e.preventDefault();
    $('.dropdown-menu_user').slideToggle();
  })
})