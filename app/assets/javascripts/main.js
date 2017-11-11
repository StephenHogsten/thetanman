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

// $(document).on('mouseover', '.js-header-link', function(ev) {
//   var id = '#' + $(this).data('target')
//   $(id).fadeIn(500, function() {
//     console.log('faded in')
//   });
// })

// $(document).on('mouseout', '.js-header-link', function() {
//   var id = '#' + $(this).data('target')
//   $(id).fadeOut(500, function() {
//     console.log('faded out')
//   });
// })
