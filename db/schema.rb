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

ActiveRecord::Schema.define(version: 20160708022506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventarios", force: :cascade do |t|
    t.integer  "serie",        null: false
    t.integer  "tamano"
    t.string   "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "operacion_id"
  end

  add_index "inventarios", ["operacion_id"], name: "index_inventarios_on_operacion_id", using: :btree
  add_index "inventarios", ["serie"], name: "index_inventarios_on_serie", using: :btree

  create_table "operacions", force: :cascade do |t|
    t.integer  "trabajar_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "operacions", ["trabajar_id"], name: "index_operacions_on_trabajar_id", using: :btree

  create_table "trabajars", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inventarios", "operacions"
  add_foreign_key "operacions", "trabajars"
end
