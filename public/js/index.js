
function initSliders(){
  $('.slider').slider()
  .on('slide', function(ev){
    $(this).closest('.conditionInput').find('.valueInput').val(ev.value);
  });
}
$(document).ready(function(){
  initSliders();
  initMap();
});
