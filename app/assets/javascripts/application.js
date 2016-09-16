//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require momentjs
//= require bootstrap-datepicker
//= require_tree .


$('input.datepicker').datepicker({
    format: "dd/mm/yyyy"
});




$('.timestring').each(function() {
  this.textContent = moment(this.textContent).format('MMMM YYYY');
});
