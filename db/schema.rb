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

ActiveRecord::Schema.define(version: 20150121065843) do

  create_table "actividads", force: true do |t|
    t.text     "descripcion"
    t.time     "hora_inicio"
    t.time     "hora_fin"
    t.integer  "tipo_actividad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividads", ["tipo_actividad_id"], name: "index_actividads_on_tipo_actividad_id"

  create_table "actividads_lugars", force: true do |t|
    t.integer "actividad_id"
    t.integer "lugar_id"
  end

  add_index "actividads_lugars", ["actividad_id"], name: "index_actividads_lugars_on_actividad_id"
  add_index "actividads_lugars", ["lugar_id"], name: "index_actividads_lugars_on_lugar_id"

  create_table "ciudads", force: true do |t|
    t.string   "nombre_ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.text     "comentario"
    t.integer  "lugar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["lugar_id"], name: "index_comentarios_on_lugar_id"

  create_table "imagens", force: true do |t|
    t.string   "nombre_imagen"
    t.string   "imagen"
    t.string   "descripcion_imagen"
    t.integer  "lugar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  add_index "imagens", ["lugar_id"], name: "index_imagens_on_lugar_id"

  create_table "lugars", force: true do |t|
    t.string   "nombre_lugar"
    t.text     "descripcion_lugar"
    t.text     "telefonos"
    t.string   "link"
    t.integer  "tipo_lugar_id"
    t.integer  "ubicacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lugars", ["tipo_lugar_id"], name: "index_lugars_on_tipo_lugar_id"
  add_index "lugars", ["ubicacion_id"], name: "index_lugars_on_ubicacion_id"

  create_table "lugars_transportes", force: true do |t|
    t.integer "lugar_id"
    t.integer "transporte_id"
  end

  add_index "lugars_transportes", ["lugar_id"], name: "index_lugars_transportes_on_lugar_id"
  add_index "lugars_transportes", ["transporte_id"], name: "index_lugars_transportes_on_transporte_id"

  create_table "nombre_transportes", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_actividads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_lugars", force: true do |t|
    t.string   "nombre_tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transportes", force: true do |t|
    t.text     "lugar_salida"
    t.text     "lugar_llegada"
    t.time     "hora_salida"
    t.time     "hora_llegada"
    t.date     "fecha"
    t.integer  "nombre_transporte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transportes", ["nombre_transporte_id"], name: "index_transportes_on_nombre_transporte_id"

  create_table "ubicacions", force: true do |t|
    t.string   "longitud"
    t.string   "latitud"
    t.text     "referencia"
    t.integer  "ciudad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubicacions", ["ciudad_id"], name: "index_ubicacions_on_ciudad_id"

end
