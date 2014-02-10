$(document).ready( function() {
  $("#entrante_procedimento").change( function() {
    var selecionado;
    selecionado = $("#entrante_procedimento").val();
    if (selecionado === 'ANEXADO') {
      $('#processo_principal').show();
    } else {
      $('#processo_principal').hide();
    }
  });
  $("#entrante_prot_doc").mask("99999.999999/9999");
  $("#entrante_dt_prot_doc").mask("99/99/9999");
  $("#entrante_processo_principal").mask("99999.999999/9999");
  $("#entrante_dt_procedimento").mask("99/99/2099");
  $('#entrante_dt_prot_doc').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    todayHighlight: true,
    language: 'pt-BR'
  });
});