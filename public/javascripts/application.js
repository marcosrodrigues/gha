$(function() {
  $.ajaxSetup({
    beforeSend: function(xhr) {
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
    }
  });

  $(".date-edit").datepicker({ dateFormat: 'dd/mm/yy' });

  // Máscara
  $(".date-edit").mask("99/99/9999");
  $(".cpf-edit").mask("999.999.999-99");
});

