$(document).on 'ready page:load', -> 
	$('#nome_documento_data').datepicker({
    format: 'dd/mm/yyyy'
    autoclose: true
    todayHighlight: true
    language: 'pt-BR'
	})
	$("#nome_documento_data").mask("99/99/9999")
	$("#nome_documento_cprod").mask("99999.999999/2099")