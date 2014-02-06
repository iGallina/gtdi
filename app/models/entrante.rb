class Entrante < ActiveRecord::Base
	never_wastes
	validates_presence_of :prot_doc,
												:dt_prot_doc,
												:assunto, 
												:procedimento
	
	validates :processo_principal, presence: true, if: :procedimento_anexado?
	validate :valid_date?
 
  def procedimento_anexado?
    procedimento == "ANEXADO"
  end											

	def valid_date?
	  if Date.parse(dt_prot_doc) > Date.today
	  	errors.add(:dt_prot_doc, "Data maior do que a data de hoje.")
	  end
	end

	private
    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def entrante_params
      params.require(:dt_prot_doc)
    end
end
