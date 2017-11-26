// when navigating to links - fade out before moving
$(document).on('turbolinks:before-visit', function(event) {
  if (!$('.main-container').hasClass('animate-fade-out')) {
    event.preventDefault();
    $('.main-container')
      .addClass('animate-fade-out')
      .one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function() {
        $('.main-container').hide();
        Turbolinks.visit(event.originalEvent.data.url)
      })
  }
})
