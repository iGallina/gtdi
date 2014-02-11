ActiveAdmin.register User do
  menu :label => "Usuários"

  permit_params :nome,
                :email,
                :sign_in_count,
                :current_sign_in_at,
                :last_sign_in_at,
                :setor_id,
                :cargo_id,
                :created_at,
                :updated_at,
                :username

  index do
    selectable_column
    id_column
    column :nome
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :setor_id
    column :cargo_id
    column :created_at
    column :updated_at
    column :username
    actions
  end

  filter :nome
  filter :email
  filter :sign_in_count
  filter :current_sign_in_at
  filter :last_sign_in_at
  filter :setor_id
  filter :cargo_id
  filter :created_at
  filter :updated_at
  filter :username
  filter :created_at

  form do |f|
    f.inputs "Usuário Detalhes" do
      f.input :nome
      f.input :email
      f.input :sign_in_count
      f.input :current_sign_in_at
      f.input :last_sign_in_at
      f.input :setor_id
      f.input :cargo_id
      f.input :created_at
      f.input :updated_at
      f.input :username
    end
    f.actions
  end

end