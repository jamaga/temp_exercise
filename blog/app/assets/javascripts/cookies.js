$('[data-selector="cookies-info-close"]').on('click', function() {
  $('[data-selector="cookies-info"]').fadeOut('fast', function() {
    document.cookie = 'cookie_terms=1; expires=Thu, 18 Dec 9999 12:00:00 UTC; path=/';
    $(this).remove();
  });
});