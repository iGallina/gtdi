ActiveAdmin.register Entrante do
  permit_params :nome, :prot_doc, :dt_prot_doc, :assunto, :procedimento, :processo_principal, :dt_procedimento


  sidebar :ajuda do
    ul do
      li "Texto explicativo"
    end
  end

  index do
    selectable_column
    id_column
    column :prot_doc
    column :dt_prot_doc
    column :assunto
    column :procedimento
    column :processo_principal
    column :dt_procedimento
    column :created_at
    actions
  end

  filter :prot_doc
  filter :dt_prot_doc
  filter :assunto
  filter :procedimento
  filter :processo_principal
  filter :dt_procedimento
  filter :created_at

  form do |f|
    f.inputs "Entrante Detalhes" do
      f.input :prot_doc
      f.input :dt_prot_doc
      f.input :assunto
      f.input :procedimento
      f.input :processo_principal
      f.input :dt_procedimento
    end
    f.actions
  end
end