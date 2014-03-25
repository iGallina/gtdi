require 'nokogiri'

namespace :xml do
    desc "Erase and fill cargo table"
    task :process => :environment do

        # IMPORTA XML DA ANATEL VIA MECHANIZE

        @xml = Nokogiri::XML(File.open("/Users/iangallina/projetos/gtdi/lib/assets/xml_srd/pb-entidade.xml"))
        @canais = @xml.xpath("//canal")
        @count = @canais.size
        limite = @count - 30
        @canais.each do |canal|
            children = canal.children
            canal = Channel.new
            @idtplanobasico = children.css('idtplanobasico').inner_text
            if @idtplanobasico != "'"
                canal.idtplanobasico = @idtplanobasico.strip
            end

            @idthabilitacao = children.css('idthabilitacao').inner_text
            if @idthabilitacao != "'"
                canal.idthabilitacao = @idthabilitacao.strip
            end

            @siglaservico = children.css('siglaservico').inner_text
            if @siglaservico != "'"
                canal.siglaservico = @siglaservico.strip
            end

            @numservico = children.css('numservico').inner_text
            if @numservico != "'"
                canal.numservico = @numservico.strip
            end

            @siglauf = children.css('siglauf').inner_text
            if @siglauf != "'"
                canal.siglauf = @siglauf.strip
            end

            @nomemunicipio = children.css('nomemunicipio').inner_text
            if @nomemunicipio != "'"
                canal.nomemunicipio = @nomemunicipio.strip
            end

            @nomedistrito = children.css('nomedistrito').inner_text
            if @nomedistrito != "'"
                canal.nomedistrito = @nomedistrito.strip
            end

            @nomesubdistrito = children.css('nomesubdistrito').inner_text
            if @nomesubdistrito != "'"
                canal.nomesubdistrito = @nomesubdistrito.strip
            end

            @localespecifico = children.css('localespecifico').inner_text
            if @localespecifico != "'"
                canal.localespecifico = @localespecifico.strip
            end

            @numcanal = children.css('numcanal').inner_text
            if @numcanal != "'"
                canal.numcanal = @numcanal.strip
            end

            @inddecalagem = children.css('inddecalagem').inner_text
            if @inddecalagem != "'"
                canal.inddecalagem = @inddecalagem.strip
            end

            @indeducativo = children.css('indeducativo').inner_text
            if @indeducativo != "'"
                canal.indeducativo = @indeducativo.strip
            end

            @indcarater = children.css('indcarater').inner_text
            if @indcarater != "'"
                canal.indcarater = @indcarater.strip
            end

            @classe = children.css('classe').inner_text
            if @classe != "'"
                canal.classe = @classe.strip
            end

            @indfase = children.css('indfase').inner_text
            if @indfase != "'"
                canal.indfase = @indfase.strip
            end

            @medlatitude = children.css('medlatitude').inner_text
            if @medlatitude != "'"
                canal.medlatitude = @medlatitude.strip
            end

            @medlongitude = children.css('medlongitude').inner_text
            if @medlongitude != "'"
                canal.medlongitude = @medlongitude.strip
            end

            @indcoordprefixada = children.css('indcoordprefixada').inner_text
            if @indcoordprefixada != "'"
                canal.indcoordprefixada = @indcoordprefixada.strip
            end

            @frequencia = children.css('frequencia').inner_text
            if @frequencia != "'"
                canal.frequencia = @frequencia.strip
            end

            @mederpmax = children.css('mederpmax').inner_text
            if @mederpmax != "'"
                canal.mederpmax = @mederpmax.strip
            end

            @deschistorico = children.css('deschistorico').inner_text
            if @deschistorico != "'"
                canal.deschistorico = @deschistorico.strip
            end

            @txtobservacao = children.css('txtobservacao').inner_text
            if @txtobservacao != "'"
                canal.txtobservacao = @txtobservacao.strip
            end

            @numconcorrencia = children.css('numconcorrencia').inner_text
            if @numconcorrencia != "'"
                canal.numconcorrencia = @numconcorrencia.strip
            end

            @anoconcorrencia = children.css('anoconcorrencia').inner_text
            if @anoconcorrencia != "'"
                canal.anoconcorrencia = @anoconcorrencia.strip
            end

            @nomeinteressada = children.css('nomeinteressada').inner_text
            if @nomeinteressada != "'"
                canal.nomeinteressada = @nomeinteressada.strip
            end

            @indcoordemsitio = children.css('indcoordemsitio').inner_text
            if @indcoordemsitio != "'"
                canal.indcoordemsitio = @indcoordemsitio.strip
            end

            @medlatitudeemsitio = children.css('medlatitudeemsitio').inner_text
            if @medlatitudeemsitio != "'"
                canal.medlatitudeemsitio = @medlatitudeemsitio.strip
            end

            @medlongitudeemsitio = children.css('medlongitudeemsitio').inner_text
            if @medlongitudeemsitio != "'"
                canal.medlongitudeemsitio = @medlongitudeemsitio.strip
            end

            @medpotenciadiurna = children.css('medpotenciadiurna').inner_text
            if @medpotenciadiurna != "'"
                canal.medpotenciadiurna = @medpotenciadiurna.strip
            end

            @medpotencianoturna = children.css('medpotencianoturna').inner_text
            if @medpotencianoturna != "'"
                canal.medpotencianoturna = @medpotencianoturna.strip
            end

            @medcampocaracteristico = children.css('medcampocaracteristico').inner_text
            if @medcampocaracteristico != "'"
                canal.medcampocaracteristico = @medcampocaracteristico.strip
            end

            @inddiretivo = children.css('inddiretivo').inner_text
            if @inddiretivo != "'"
                canal.inddiretivo = @inddiretivo.strip
            end

            @medganho = children.css('medganho').inner_text
            if @medganho != "'"
                canal.medganho = @medganho.strip
            end

            @medpotencia = children.css('medpotencia').inner_text
            if @medpotencia != "'"
                canal.medpotencia = @medpotencia.strip
            end

            @obsantena = children.css('obsantena').inner_text
            if @obsantena != "'"
                canal.obsantena = @obsantena.strip
            end

            @medazimalinhdipolos = children.css('medazimalinhdipolos').inner_text
            if @medazimalinhdipolos != "'"
                canal.medazimalinhdipolos = @medazimalinhdipolos.strip
            end

            @medazimmaxirradiacao = children.css('medazimmaxirradiacao').inner_text
            if @medazimmaxirradiacao != "'"
                canal.medazimmaxirradiacao = @medazimmaxirradiacao.strip
            end

            @horarioinicio1 = children.css('horarioinicio1').inner_text
            if @horarioinicio1 != "'"
                canal.horarioinicio1 = @horarioinicio1.strip
            end

            @horariofim1 = children.css('horariofim1').inner_text
            if @horariofim1 != "'"
                canal.horariofim1 = @horariofim1.strip
            end

            @horarioinicio2 = children.css('horarioinicio2').inner_text
            if @horarioinicio2 != "'"
                canal.horarioinicio2 = @horarioinicio2.strip
            end

            @horariofim2 = children.css('horariofim2').inner_text
            if @horariofim2 != "'"
                canal.horariofim2 = @horariofim2.strip
            end

            @numcnpjcpf = children.css('numcnpjcpf').inner_text
            if @numcnpjcpf != "'"
                canal.numcnpjcpf = @numcnpjcpf.strip
            end

            @nomeentidade = children.css('nomeentidade').inner_text
            if @nomeentidade != "'"
                canal.nomeentidade = @nomeentidade.strip
            end

            @numfistel = children.css('numfistel').inner_text
            if @numfistel != "'"
                canal.numfistel = @numfistel.strip
            end

            @numprocesso = children.css('numprocesso').inner_text
            if @numprocesso != "'"
                canal.numprocesso = @numprocesso.strip
            end

            @txtcomentario = children.css('txtcomentario').inner_text
            if @txtcomentario != "'"
                canal.txtcomentario = @txtcomentario.strip
            end

            @numprocessomc_srd = children.css('numprocessomc_srd').inner_text
            if @numprocessomc_srd != "'"
                canal.numprocessomc_srd = @numprocessomc_srd.strip
            end

            @numprocessoportariamc_srd = children.css('numprocessoportariamc_srd').inner_text
            if @numprocessoportariamc_srd != "'"
                canal.numprocessoportariamc_srd = @numprocessoportariamc_srd.strip
            end

            @numscradjur = children.css('numscradjur').inner_text
            if @numscradjur != "'"
                canal.numscradjur = @numscradjur.strip
            end

            @numscradtec = children.css('numscradtec').inner_text
            if @numscradtec != "'"
                canal.numscradtec = @numscradtec.strip
            end

            @datacontrato = children.css('datacontrato').inner_text
            if @datacontrato != "'"
                canal.datacontrato = @datacontrato.strip
            end

            @datalimiteinstalacao = children.css('datalimiteinstalacao').inner_text
            if @datalimiteinstalacao != "'"
                canal.datalimiteinstalacao = @datalimiteinstalacao.strip
            end

            @endlogradouro_sede = children.css('endlogradouro_sede').inner_text
            if @endlogradouro_sede != "'"
                canal.endlogradouro_sede = @endlogradouro_sede.strip
            end

            @endnumero_sede = children.css('endnumero_sede').inner_text
            if @endnumero_sede != "'"
                canal.endnumero_sede = @endnumero_sede.strip
            end

            @endcomplemento_sede = children.css('endcomplemento_sede').inner_text
            if @endcomplemento_sede != "'"
                canal.endcomplemento_sede = @endcomplemento_sede.strip
            end

            @endbairro_sede = children.css('endbairro_sede').inner_text
            if @endbairro_sede != "'"
                canal.endbairro_sede = @endbairro_sede.strip
            end

            @nomemunicipio_sede = children.css('nomemunicipio_sede').inner_text
            if @nomemunicipio_sede != "'"
                canal.nomemunicipio_sede = @nomemunicipio_sede.strip
            end

            @siglauf_sede = children.css('siglauf_sede').inner_text
            if @siglauf_sede != "'"
                canal.siglauf_sede = @siglauf_sede.strip
            end

            @codcep_sede = children.css('codcep_sede').inner_text
            if @codcep_sede != "'"
                canal.codcep_sede = @codcep_sede.strip
            end

            @endlogradouro_corr = children.css('endlogradouro_corr').inner_text
            if @endlogradouro_corr != "'"
                canal.endlogradouro_corr = @endlogradouro_corr.strip
            end

            @endnumero_corr = children.css('endnumero_corr').inner_text
            if @endnumero_corr != "'"
                canal.endnumero_corr = @endnumero_corr.strip
            end

            @endcomplemento_corr = children.css('endcomplemento_corr').inner_text
            if @endcomplemento_corr != "'"
                canal.endcomplemento_corr = @endcomplemento_corr.strip
            end

            @endbairro_corr = children.css('endbairro_corr').inner_text
            if @endbairro_corr != "'"
                canal.endbairro_corr = @endbairro_corr.strip
            end

            @nomemunicipio_corr = children.css('nomemunicipio_corr').inner_text
            if @nomemunicipio_corr != "'"
                canal.nomemunicipio_corr = @nomemunicipio_corr.strip
            end

            @siglauf_corr = children.css('siglauf_corr').inner_text
            if @siglauf_corr != "'"
                canal.siglauf_corr = @siglauf_corr.strip
            end

            @codcep_corr = children.css('codcep_corr').inner_text
            if @codcep_corr != "'"
                canal.codcep_corr = @codcep_corr.strip
            end

            @siglasituacao = children.css('siglasituacao').inner_text
            if @siglasituacao != "'"
                canal.siglasituacao = @siglasituacao.strip
            end

            @idtpareamento = children.css('idtpareamento').inner_text
            if @idtpareamento != "'"
                canal.idtpareamento = @idtpareamento.strip
            end

            @cod_municipio = children.css('CodMunicipio').inner_text
            if @cod_municipio != "'"
                canal.cod_municipio = @cod_municipio.strip
            end

            @canal_publico = children.css('CanalPublico').inner_text
            if @canal_publico != "'"
                canal.canal_publico = @canal_publico.strip
            end

            puts canal.save!
            @count -= 1
            puts "[#{@count}] #{canal.inspect}\n\n"
        end
    end
end
