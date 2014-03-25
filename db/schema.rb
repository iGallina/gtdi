# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140307200824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cargos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", force: true do |t|
    t.string   "idtplanobasico"
    t.string   "idthabilitacao"
    t.string   "siglaservico"
    t.string   "numservico"
    t.string   "siglauf"
    t.string   "nomemunicipio"
    t.string   "nomedistrito"
    t.string   "nomesubdistrito"
    t.string   "localespecifico"
    t.string   "numcanal"
    t.string   "inddecalagem"
    t.string   "indeducativo"
    t.string   "indcarater"
    t.string   "classe"
    t.string   "indfase"
    t.string   "medlatitude"
    t.string   "medlongitude"
    t.string   "indcoordprefixada"
    t.string   "frequencia"
    t.string   "mederpmax"
    t.string   "deschistorico"
    t.text     "txtobservacao"
    t.string   "numconcorrencia"
    t.string   "anoconcorrencia"
    t.string   "nomeinteressada"
    t.string   "indcoordemsitio"
    t.string   "medlatitudeemsitio"
    t.string   "medlongitudeemsitio"
    t.string   "medpotenciadiurna"
    t.string   "medpotencianoturna"
    t.string   "medcampocaracteristico"
    t.string   "inddiretivo"
    t.string   "medganho"
    t.string   "medpotencia"
    t.string   "obsantena"
    t.string   "medazimalinhdipolos"
    t.string   "medazimmaxirradiacao"
    t.string   "horarioinicio1"
    t.string   "horariofim1"
    t.string   "horarioinicio2"
    t.string   "horariofim2"
    t.string   "numcnpjcpf"
    t.string   "nomeentidade"
    t.string   "numfistel"
    t.string   "numfistelservicoprincipal"
    t.string   "numprocesso"
    t.string   "txtcomentario"
    t.string   "numprocessomc_srd"
    t.string   "numprocessoportariamc_srd"
    t.string   "numscradjur"
    t.string   "numscradtec"
    t.string   "datacontrato"
    t.string   "datalimiteinstalacao"
    t.string   "endlogradouro_sede"
    t.string   "endnumero_sede"
    t.string   "endcomplemento_sede"
    t.string   "endbairro_sede"
    t.string   "nomemunicipio_sede"
    t.string   "siglauf_sede"
    t.string   "codcep_sede"
    t.string   "endlogradouro_corr"
    t.string   "endnumero_corr"
    t.string   "endcomplemento_corr"
    t.string   "endbairro_corr"
    t.string   "nomemunicipio_corr"
    t.string   "siglauf_corr"
    t.string   "codcep_corr"
    t.string   "siglasituacao"
    t.string   "idtpareamento"
    t.string   "cod_municipio"
    t.string   "canal_publico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrantes", force: true do |t|
    t.string   "prot_doc"
    t.string   "dt_prot_doc"
    t.string   "assunto"
    t.string   "procedimento"
    t.string   "processo_principal"
    t.string   "dt_procedimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",            default: false, null: false
    t.datetime "deleted_at"
  end

  create_table "nome_arquivos", force: true do |t|
    t.string   "tipo"
    t.string   "assunto"
    t.datetime "data"
    t.string   "cprod"
    t.boolean  "sem_cprod"
    t.boolean  "mais_de_um_processo"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",             default: false, null: false
    t.datetime "deleted_at"
  end

  create_table "nota_tecnicas", force: true do |t|
    t.string   "data_nota"
    t.string   "numero_nota"
    t.string   "numero_processo"
    t.string   "status"
    t.string   "nome_do_analista"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",          default: false, null: false
    t.datetime "deleted_at"
  end

  create_table "setors", force: true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "setor_id"
    t.integer  "cargo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "nome"
  end

  add_index "users", ["cargo_id"], name: "index_users_on_cargo_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nome"], name: "index_users_on_nome", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["setor_id"], name: "index_users_on_setor_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
