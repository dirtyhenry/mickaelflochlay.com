$(function() {
  $('.modal-button').click(function() {
    const elementID = $(this).data('target');
    $('#' + elementID).addClass("is-active");
  });

  $('.modal').click(function() {
    $(this).removeClass("is-active");
  })
});
