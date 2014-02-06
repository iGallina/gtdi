$(document).on 'ready page:load', ->
	$('#nota_tecnica_data_nota').datepicker({
    format: 'dd/mm/yyyy'
    autoclose: true
    todayHighlight: true
    language: 'pt-BR'
	})

	$("#nota_tecnica_data_nota").mask("99/99/9999")
	$("#nota_tecnica_numero_nota").mask("99999")
	$("#nota_tecnica_numero_processo").mask("99999.999999/2099")
