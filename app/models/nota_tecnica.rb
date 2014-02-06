class NotaTecnica < ActiveRecord::Base
	never_wastes
	validates_presence_of :data_nota,
										    :numero_nota,
										    :numero_processo,
										    :nome_do_analista

	validates :area,
            :presence => true,
            :inclusion => {:in => %w(LEGAL TÉCNICA), :message => "%{value} não é uma área válida"}

	validates :status,
            :presence => true,
             exclusion: { in: %w(Selecione), :message => "%{value} não é um status válido"}
end
