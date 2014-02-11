ActiveAdmin.register NomeArquivo do
  permit_params :tipo, :assunto, :data, :cprod, :sem_cprod, :mais_de_um_processo, :arquivo

  sidebar :ajuda do
    ul do
      li "Texto explicativo"
    end
  end

  index do
    selectable_column
    id_column
    column :tipo
    column :assunto
    column :data
    column :cprod
    column :sem_cprod
    column :mais_de_um_processo
    column :arquivo
    column :created_at
    actions
  end

  filter :tipo
  filter :assunto
  filter :data
  filter :cprod
  filter :sem_cprod
  filter :mais_de_um_processo
  filter :arquivo
  filter :created_at

  form do |f|
    f.inputs "Entrante Detalhes" do
      f.input :tipo
      f.input :assunto
      f.input :data
      f.input :cprod
      f.input :sem_cprod
      f.input :mais_de_um_processo
      f.input :arquivo
      f.input :dt_procedimento
    end
    f.actions
  end
end