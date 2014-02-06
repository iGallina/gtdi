namespace :db do
  desc "Erase and fill setor table"
  task :populate_setor => :environment do
    [Setor].each(&:delete_all)
    Setor.create(id: 1, nome: "GTDI/SCE-MC", descricao: "GRUPO DE TRABALHO DE DOCUMENTAÇÃO E INFORMAÇÃO")
    Setor.create(id: 2, nome: "GTPO/DEOC/SCE-MC", descricao: "GRUPO DE TRABALHO DE PÓS-OUTORGA")
    Setor.create(id: 3, nome: "GTCO/DEOC/SCE-MC", descricao: "GRUPO DE TRABALHO DE RADIODIFUSÃO COMERCIAL")
    Setor.create(id: 4, nome: "GTED/DEAA/SCE-MC", descricao: "GRUPO DE TRABALHO DE RADIODIFUSÃO EDUCATIVA E CONSIGNAÇÕES DA UNIÃO")
    Setor.create(id: 5, nome: "ATP/SCE-MC", descricao: "ATENDIMENTO")
    Setor.create(id: 6, nome: "SDEDU/GTDI/SCE-MC", descricao: "SUBGRUPO DE TRABALHO DE DOCUMENTAÇÃO E INFORMAÇÃO DE RADIODIFUSÃO EDUCATIVA E CONSIGNAÇÕES DA UNIÃO")
    Setor.create(id: 7, nome: "GTFT-MG/SCE-MC", descricao: "GRUPO DE TRABALHO DE FORÇA TAREFA - MG")
    Setor.create(id: 8, nome: "SDCOM/GTDI/SCE-MC", descricao: "GRUPO DE TRABALHO DE DOCUMENTAÇÃO E INFORMAÇÃO")
    Setor.create(id: 9, nome: "SLPOS/GTCO/DEOC/SCE-MC", descricao: "SUBGRUPO LEGAL DE PÓS-OUTORGA")
    Setor.create(id: 10, nome: "COAPI/CGAO/DEAA/SCE-MC", descricao: "COORDENAÇÃO DE APURAÇÃO DE INFRAÇÃO")
    Setor.create(id: 11, nome: "CODEN/CGAO/DEAA/SCE-MC", descricao: "COORDENAÇÃO DE ANÁLISE DE DENÚNCIAS")
    Setor.create(id: 12, nome: "GTTVD/DEOC/SCE-MC", descricao: "GRUPO DE TRABALHO DE TELEVISÃO DIGITAL|GTTVD/DEOC/SCE-MC")
    Setor.create(id: 13, nome: "GTPU/DEOC/SCE-MC", descricao: "GRUPO DE TRABALHO DE RADIODIFUSÃO PÚBLICA E ANCILARES")
    Setor.create(id: 14, nome: "CGAO/DEAA/SCE-MC", descricao: "COORDENAÇÃO GERAL DE ACOMPANHAMENTO DE OUTORGAS|CGAO/DEAA/SCE-MC")
    Setor.create(id: 15, nome: "CGEO/DEOC/SCE-MC", descricao: "COORDENAÇÃO GERAL DE ENGENHARIA E OUTORGAS")
  end
end