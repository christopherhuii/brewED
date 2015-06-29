$(function(){
  $('.recipes').imagesLoaded(function(){
    $('.recipes').masonry({
      itemSelector: '.box',
      isFitWidth: true,
    });
  });
});