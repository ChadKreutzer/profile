$(document).ready(function() {
  // $('#story').css('margin-top', -($('#about').height() - 20 ) + 'px')
  $('#about').affix({
    offset: {
      top: $('#home').height()
    }
  });
});