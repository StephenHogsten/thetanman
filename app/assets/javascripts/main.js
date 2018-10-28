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

// $(document).on('click', 'a[href="#"]', function(ev) {
//   ev.preventDefault();
// })

$(document).on('click', '#header-bars', function() {
  $(this).siblings('.__links').toggleClass('--expanded');
})

// let google track that they clicked a social link
$(document).on('click', '.social-icon', function(ev) {
  var source = $(ev.target).attr('src').split('/')[2].split('_')[0]
  gtag('event', 'Social Link', {
    event_category: 'External Link', 
    event_label: source
  })
})

// let google track that they clicked a pre-order link
$(document).on('click', '.purchase-button', function(ev) {
  var source = $(ev.target).attr('alt')
  gtag('event', 'Purchase Link', {
    event_category: 'External Link', 
    event_label: source
  })
})

$(document).on('turbolinks:load', function() {
  // I believe some events need to be bound to elements rather than just the body

  $('#contact-us')
    .on('submit', function(ev, b) {
      $('#contact-us').hide();
      $('#form-spinner').show();
      $('#ajax-results-container').hide();
    })
    .on('ajax:success', function(a, b) {
      $('#form-spinner').hide();
      
      $('#ajax-results-container').children().remove()
      $('#ajax-results-container')
        .removeClass('--error')
        .show()
        .append('<p>Message sent successfully!</p>');
    })
    .on('ajax:error', function(a, b) {
      console.log(a);
      console.log(b);
      $('#form-spinner').hide();
      $('#contact-us').show();
      $('#ajax-results-container').children().remove();
      $('#ajax-results-container')
        .addClass('--error')
        .show()
        .append('<p>Message not sent, please try again later.</p>')
    });

  var activeGalleryIdx = 0
  $(document).on('click', '.js-gallery-left', function(ev) {
    ev.preventDefault()
    $('.gallery__image-container.--active').removeClass('--active')
    var children = $('.gallery__images').children()
    activeGalleryIdx = (activeGalleryIdx - 1 + children.length) % children.length
    console.log('activeGalleryIdx', activeGalleryIdx);
    children[activeGalleryIdx].classList += ' --active'
  })
  
  $(document).on('click', '.js-gallery-right', function(ev) {
    ev.preventDefault()
    $('.gallery__image-container.--active').removeClass('--active')
    var children = $('.gallery__images').children()
    activeGalleryIdx = (activeGalleryIdx + 1 + children.length) % children.length
    console.log('activeGalleryIdx', activeGalleryIdx);
    children[activeGalleryIdx].classList += ' --active'
  })
});