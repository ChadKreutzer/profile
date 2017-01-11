$(document).ready(function() {
  // $('#story').css('margin-top', -($('#about').height() - 20 ) + 'px')
  $('.section').affix({
    offset: {
      top: $('#home').height()
    }
  });
});