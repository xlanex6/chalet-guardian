//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require momentjs
//= require bootstrap-datepicker
//= require_tree .


$(function() {
    $('input.datepicker').data({behaviour: "datepicker"}).datepicker();
});


$('.timestring').each(function() {
  this.textContent = moment(this.textContent).format('MMMM YYYY');
});
