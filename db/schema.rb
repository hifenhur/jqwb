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

ActiveRecord::Schema.define(:version => 20130531132405) do

  create_table "agent", :primary_key => "id_agent", :force => true do |t|
    t.string  "nome",    :limit => 40
    t.integer "id_user"
  end

  create_table "alert", :primary_key => "id_alert", :force => true do |t|
    t.datetime "dh_rx"
    t.string   "plaque",         :limit => 20
    t.string   "description",    :limit => 40
    t.integer  "cod_infraction"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "status",         :limit => 20
    t.integer  "id_monitor"
    t.integer  "id_agent"
    t.integer  "space"
    t.datetime "dh_ins"
  end

  create_table "band_qrcodes", :primary_key => "id_band", :force => true do |t|
    t.integer "start_band",   :limit => 8
    t.integer "stop_band",    :limit => 8
    t.integer "id_type_band"
  end

  add_index "band_qrcodes", ["id_type_band"], :name => "fki_band_type_band_fk"

  create_table "configuration_general", :primary_key => "id_configuration_general", :force => true do |t|
    t.integer "rays_alert"
  end

  create_table "cupons", :primary_key => "id_cupons", :force => true do |t|
    t.datetime "dh_action"
    t.string   "local",     :limit => 20
    t.string   "type",      :limit => 20
    t.integer  "id_user"
  end

  add_index "cupons", ["id_user"], :name => "fki_cupons_user_fk"

  create_table "infraction", :primary_key => "id_infraction", :force => true do |t|
    t.integer "id_alert"
    t.integer "id_user"
    t.string  "status_alert", :limit => 1
    t.string  "description",  :limit => 40
  end

  create_table "monitor", :primary_key => "id_monitor", :force => true do |t|
    t.string  "name",        :limit => 40
    t.string  "type",        :limit => 2
    t.string  "description", :limit => 20
    t.integer "id_user"
  end

  create_table "pdv", :primary_key => "id_pdv", :force => true do |t|
    t.integer "id_monitor"
    t.integer "id_user"
    t.integer "id_qrcodes"
    t.string  "status",      :limit => 1
    t.string  "description", :limit => 20
  end

  create_table "position", :primary_key => "id_position_agente", :force => true do |t|
    t.integer  "id_user"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "dh_ins"
  end

  create_table "qrcode_space", :primary_key => "id_qrcode_space", :force => true do |t|
    t.integer "space"
  end

  create_table "qrcodes", :primary_key => "id_qrcodes", :force => true do |t|
    t.string "cod_qrcode", :limit => 20
    t.string "status",     :limit => 1
  end

  create_table "stock_control_qrcode", :primary_key => "id_stock_control", :force => true do |t|
    t.integer  "id_qrcodes"
    t.datetime "dh_ins"
    t.integer  "qrcode_band", :limit => 8
  end

  create_table "stretch", :primary_key => "id_stretch", :force => true do |t|
    t.string  "street",           :limit => 40
    t.string  "perimeter",        :limit => 40
    t.integer "side_left_start"
    t.integer "side_left_stop"
    t.integer "side_right_start"
    t.integer "side_right_stop"
  end

  create_table "type_band", :primary_key => "id_type_band", :force => true do |t|
    t.string  "band_name", :limit => 20
    t.string  "status",    :limit => 1
    t.integer "timer"
  end

  create_table "type_infraction", :primary_key => "id_type_infraction", :force => true do |t|
    t.integer "cod_infraction"
    t.string  "description",    :limit => 40
  end

  create_table "user_type", :primary_key => "id_user_type", :force => true do |t|
    t.string "types",       :limit => 2
    t.string "description", :limit => 20
  end

  create_table "user_web", :primary_key => "id_user", :force => true do |t|
    t.string   "login",                  :limit => 20
    t.string   "password",               :limit => 40
    t.string   "presentation",           :limit => 40
    t.string   "status",                 :limit => 1
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_web", ["email"], :name => "index_user_web_on_email", :unique => true
  add_index "user_web", ["reset_password_token"], :name => "index_user_web_on_reset_password_token", :unique => true

  create_table "users", :primary_key => "id_user", :force => true do |t|
    t.integer "id_type"
    t.string  "matricula", :limit => 20
    t.string  "name",      :limit => 40
    t.string  "passwords", :limit => 20
  end

  create_table "version_qrcode", :primary_key => "id_version", :force => true do |t|
    t.string "version", :limit => 10
    t.string "status",  :limit => 1
  end

end
