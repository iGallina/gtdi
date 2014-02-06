class CreateEntrantes < ActiveRecord::Migration
  def change
    create_table :entrantes do |t|
      t.string :prot_doc
      t.string :dt_prot_doc
      t.string :assunto
      t.string :procedimento
      t.string :processo_principal
      t.string :dt_procedimento

      t.timestamps
    end
  end
end
