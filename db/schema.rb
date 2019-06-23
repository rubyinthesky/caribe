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

ActiveRecord::Schema.define(version: 2019_06_23_164311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.integer "id_post"
    t.integer "id_usuarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria_posts", force: :cascade do |t|
    t.integer "id_categoria"
    t.integer "id_post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hashtag_posts", force: :cascade do |t|
    t.integer "id_hashtag"
    t.integer "id_post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hashts", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "titulo"
    t.datetime "fecha"
    t.string "url_imagen"
    t.integer "id_usuario_creador"
    t.text "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
