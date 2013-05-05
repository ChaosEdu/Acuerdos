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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130429061012) do

  create_table "acuerdos", :force => true do |t|
    t.string   "titulo"
    t.text     "detalles"
    t.decimal  "avance_acuerdo"
    t.integer  "lista_acuerdo_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "correo"
    t.integer  "tipo_email_id"
    t.integer  "empleado_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "empleados", :force => true do |t|
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.integer  "puestos_entidad_id"
    t.string   "dir_trabajo"
    t.string   "jefe_inmediato"
    t.boolean  "activo"
    t.integer  "tipo_usuario_id"
    t.integer  "entidad_paraestatal_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "entidad_paraestatals", :force => true do |t|
    t.text     "nom_entidad"
    t.text     "objeto_social"
    t.text     "marco_normativo"
    t.integer  "tipo_entidad_id"
    t.integer  "organo_de_gobierno_id"
    t.integer  "secretaria_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "entidad_paraestatals", ["organo_de_gobierno_id"], :name => "index_entidad_paraestatals_on_organo_de_gobierno_id"
  add_index "entidad_paraestatals", ["secretaria_id"], :name => "index_entidad_paraestatals_on_secretaria_id"
  add_index "entidad_paraestatals", ["tipo_entidad_id"], :name => "index_entidad_paraestatals_on_tipo_entidad_id"

  create_table "gestions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lista_acuerdos", :force => true do |t|
    t.decimal  "avance"
    t.integer  "sesion_id"
    t.string   "act"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "act_file_name"
    t.string   "act_content_type"
    t.integer  "act_file_size"
    t.datetime "act_updated_at"
  end

  add_index "lista_acuerdos", ["sesion_id"], :name => "index_lista_acuerdos_on_sesion_id"

  create_table "organo_de_gobiernos", :force => true do |t|
    t.string   "nom_organo"
    t.integer  "tipo_organo_de_gobierno_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "puestos_entidads", :force => true do |t|
    t.string   "nom_puesto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "secretaria", :force => true do |t|
    t.string   "nom_secretaria"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "sesions", :force => true do |t|
    t.boolean  "status"
    t.datetime "fecha"
    t.time     "hora"
    t.text     "lugar"
    t.boolean  "extra_ordinaria"
    t.integer  "entidad_paraestatal_id"
    t.integer  "suplente_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "sesions", ["entidad_paraestatal_id"], :name => "index_sesions_on_entidad_paraestatal_id"
  add_index "sesions", ["suplente_id"], :name => "index_sesions_on_suplente_id"

  create_table "suplentes", :force => true do |t|
    t.integer  "empleado_id"
    t.integer  "entidad_paraestatal_id"
    t.integer  "gestion_id"
    t.integer  "sesion_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "suplentes", ["empleado_id"], :name => "index_suplentes_on_empleado_id"
  add_index "suplentes", ["entidad_paraestatal_id"], :name => "index_suplentes_on_entidad_paraestatal_id"
  add_index "suplentes", ["gestion_id"], :name => "index_suplentes_on_gestion_id"

  create_table "telefonos", :force => true do |t|
    t.string   "num_telefono"
    t.integer  "tipo_tel_id"
    t.integer  "empleado_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tipo_emails", :force => true do |t|
    t.string   "nom_tipo_email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "tipo_entidades", :force => true do |t|
    t.string   "nom_tipo_entidad"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tipo_organo_de_gobiernos", :force => true do |t|
    t.string   "nom_tipo_de_organo"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tipo_tels", :force => true do |t|
    t.string   "nom_tipo_tel"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tipo_usuarios", :force => true do |t|
    t.string   "nom_usuario"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tramites", :force => true do |t|
    t.string   "nombre_doc"
    t.integer  "entidad_paraestatal_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
