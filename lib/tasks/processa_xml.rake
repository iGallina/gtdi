require 'nokogiri'
require 'mechanize'


namespace :xml do

    desc "Importa XML da ANATEL Website"
    task :download_all => :environment do
        agent = Mechanize.new
        agent.auth('ian.mc', 'nGGWtD7u',nil)
        page = agent.get('http://sistemasnet/')
        puts page
        # agent.pluggable_parser.default = Mechanize::Download
        # agent.get('http://example.com/foo').save('#{xml_path}/#{Time.day}#{Time.month}#{Time.year}/xmls.zip')
        
        # Cria a pasta e o link simbólico
        # exec 'cd #{xml_path}'
        # exec 'mkdir #{Time.day}#{Time.month}#{Time.year}'
        # exec 'rm -Rf current/'
        # exec 'ln -s #{Time.day}#{Time.month}#{Time.year}/ current/'
        # exec 'cd #{Time.day}#{Time.month}#{Time.year}'
        # exec 'unzip xmls.zip'

    end


    desc "processa Canais e popula tabela Channels"
    task :importa_canais => :environment do

        # TODO        
        #Diffy para saber o que inserir

        xml_path = "#{Rails.root}/lib/assets/xml_srd/"
        current_xml_path = "#{Rails.root}/lib/assets/xml_srd/current"

        @xml = Nokogiri::XML(File.open("#{current_xml_path}/pb-entidade.xml"))
        @canais = @xml.xpath("//canal")
        @count = @canais.size

        if Channel.all == []
            ActiveRecord::Base.connection.reset_pk_sequence!('channels')
        end

        @canais.each do |canal|
            children = canal.children
            cn = Channel.find_or_create_by_idtplanobasico(children.css('idtplanobasico').inner_text)
            cn.idthabilitacao = sanitize_attrib(children.css('idthabilitacao').inner_text)
            cn.siglaservico = sanitize_attrib(children.css('siglaservico').inner_text)
            cn.numservico = sanitize_attrib(children.css('numservico').inner_text)
            cn.siglauf = sanitize_attrib(children.css('siglauf').inner_text)
            cn.nomemunicipio = sanitize_attrib(children.css('nomemunicipio').inner_text)
            cn.nomedistrito = sanitize_attrib(children.css('nomedistrito').inner_text)
            cn.nomesubdistrito = sanitize_attrib(children.css('nomesubdistrito').inner_text)
            cn.localespecifico = sanitize_attrib(children.css('localespecifico').inner_text)
            cn.numcanal = sanitize_attrib(children.css('numcanal').inner_text)
            cn.inddecalagem = sanitize_attrib(children.css('inddecalagem').inner_text)
            cn.indeducativo = sanitize_attrib(children.css('indeducativo').inner_text)
            cn.indcarater = sanitize_attrib(children.css('indcarater').inner_text)
            cn.classe = sanitize_attrib(children.css('classe').inner_text)
            cn.indfase = sanitize_attrib(children.css('indfase').inner_text)
            cn.medlatitude = sanitize_attrib(children.css('medlatitude').inner_text)
            cn.medlongitude = sanitize_attrib(children.css('medlongitude').inner_text)
            cn.indcoordprefixada = sanitize_attrib(children.css('indcoordprefixada').inner_text)
            cn.frequencia = sanitize_attrib(children.css('frequencia').inner_text)
            cn.mederpmax = sanitize_attrib(children.css('mederpmax').inner_text)
            cn.deschistorico = sanitize_attrib(children.css('deschistorico').inner_text)
            cn.txtobservacao = sanitize_attrib(children.css('txtobservacao').inner_text)
            cn.numconcorrencia = sanitize_attrib(children.css('numconcorrencia').inner_text)
            cn.anoconcorrencia = sanitize_attrib(children.css('anoconcorrencia').inner_text)
            cn.nomeinteressada = sanitize_attrib(children.css('nomeinteressada').inner_text)
            cn.indcoordemsitio = sanitize_attrib(children.css('indcoordemsitio').inner_text)
            cn.medlatitudeemsitio = sanitize_attrib(children.css('medlatitudeemsitio').inner_text)
            cn.medlongitudeemsitio = sanitize_attrib(children.css('medlongitudeemsitio').inner_text)
            cn.medpotenciadiurna = sanitize_attrib(children.css('medpotenciadiurna').inner_text)
            cn.medpotencianoturna = sanitize_attrib(children.css('medpotencianoturna').inner_text)
            cn.medcampocaracteristico = sanitize_attrib(children.css('medcampocaracteristico').inner_text)
            cn.inddiretivo = sanitize_attrib(children.css('inddiretivo').inner_text)
            cn.medganho = sanitize_attrib(children.css('medganho').inner_text)
            cn.medpotencia = sanitize_attrib(children.css('medpotencia').inner_text)
            cn.obsantena = sanitize_attrib(children.css('obsantena').inner_text)
            cn.medazimalinhdipolos = sanitize_attrib(children.css('medazimalinhdipolos').inner_text)
            cn.medazimmaxirradiacao = sanitize_attrib(children.css('medazimmaxirradiacao').inner_text)
            cn.horarioinicio1 = sanitize_attrib(children.css('horarioinicio1').inner_text)
            cn.horariofim1 = sanitize_attrib(children.css('horariofim1').inner_text)
            cn.horarioinicio2 = sanitize_attrib(children.css('horarioinicio2').inner_text)
            cn.horariofim2 = sanitize_attrib(children.css('horariofim2').inner_text)
            cn.numcnpjcpf = sanitize_attrib(children.css('numcnpjcpf').inner_text)
            cn.nomeentidade = sanitize_attrib(children.css('nomeentidade').inner_text)
            cn.numfistel = sanitize_attrib(children.css('numfistel').inner_text)
            cn.numprocesso = sanitize_attrib(children.css('numprocesso').inner_text)
            cn.txtcomentario = sanitize_attrib(children.css('txtcomentario').inner_text)
            cn.numprocessomc_srd = sanitize_attrib(children.css('numprocessomc_srd').inner_text)
            cn.numprocessoportariamc_srd = sanitize_attrib(children.css('numprocessoportariamc_srd').inner_text)
            cn.numscradjur = sanitize_attrib(children.css('numscradjur').inner_text)
            cn.numscradtec = sanitize_attrib(children.css('numscradtec').inner_text)
            cn.datalimiteinstalacao = sanitize_attrib(children.css('datalimiteinstalacao').inner_text)
            cn.endlogradouro_sede = sanitize_attrib(children.css('endlogradouro_sede').inner_text)
            cn.endnumero_sede = sanitize_attrib(children.css('endnumero_sede').inner_text)
            cn.endcomplemento_sede = sanitize_attrib(children.css('endcomplemento_sede').inner_text)
            cn.endbairro_sede = sanitize_attrib(children.css('endbairro_sede').inner_text)
            cn.nomemunicipio_sede = sanitize_attrib(children.css('nomemunicipio_sede').inner_text)
            cn.siglauf_sede = sanitize_attrib(children.css('siglauf_sede').inner_text)
            cn.codcep_sede = sanitize_attrib(children.css('codcep_sede').inner_text)
            cn.endlogradouro_corr = sanitize_attrib(children.css('endlogradouro_corr').inner_text)
            cn.endnumero_corr = sanitize_attrib(children.css('endnumero_corr').inner_text)
            cn.endcomplemento_corr = sanitize_attrib(children.css('endcomplemento_corr').inner_text)
            cn.endbairro_corr = sanitize_attrib(children.css('endbairro_corr').inner_text)
            cn.nomemunicipio_corr = sanitize_attrib(children.css('nomemunicipio_corr').inner_text)
            cn.siglauf_corr = sanitize_attrib(children.css('siglauf_corr').inner_text)
            cn.codcep_corr = sanitize_attrib(children.css('codcep_corr').inner_text)
            cn.siglasituacao = sanitize_attrib(children.css('siglasituacao').inner_text)
            cn.idtpareamento = sanitize_attrib(children.css('idtpareamento').inner_text)
            cn.cod_municipio = sanitize_attrib(children.css('CodMunicipio').inner_text)
            cn.canal_publico = sanitize_attrib(children.css('Canal_Publico').inner_text)
            if cn.indeducativo == 1 and cn.siglaservico == "TV"
                cn.siglaservico = "TVE"
            end
            if cn.indeducativo == 1 and cn.siglaservico == "FM"
                cn.siglaservico = "FME"
            end
            
            if cn.siglaservico == "PBTVD" and cn.indfase != 0
                cn.siglaservico = "RTVD"
            end

            data = sanitize_attrib(children.css('datacontrato').inner_text)
            if data != nil
                cn.datacontrato = data.to_date
            else
                cn.datacontrato = data
            end
            
            if cn.nomeentidade == "EBC - EMPRESA BRASIL DE COMUNICACAO S/A" or cn.nomeentidade == "SENADO FEDERAL" or cn.nomeentidade == "CAMARA DOS DEPUTADOS" or cn.nomeentidade == "SUPREMO TRIBUNAL FEDERAL"
                cn.uniao = "SIM"
            else
                cn.uniao = "NAO"
            end

            cn.ibge6 = cn.cod_municipio[0..5]

            if cn.indcarater == "P" or cn.indcarater == "G" or cn.indcarater == "A"
                cn.carater = "PRI"
            else
                cn.carater = "SEC"
            end
            
            if cn.save! == true
                puts "[#{@count -= 1}] ok\n"
            else
                puts "[#{@count -= 1}] erro\n"
            end
        end
    end

    def sanitize_attrib(attrib)
        if attrib != "'"
            return attrib.strip
        else
            return nil
        end
    end
end

