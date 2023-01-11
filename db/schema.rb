# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_16_144047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text "article"
    t.bigint "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_articles_on_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "status", default: 1
  end

  create_table "stats", force: :cascade do |t|
    t.integer "sign_up_count"
    t.integer "page_view_count"
    t.integer "click_count"
    t.bigint "variation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "ctr"
    t.index ["variation_id"], name: "index_stats_on_variation_id"
  end

  create_table "variations", force: :cascade do |t|
    t.text "article_variation"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_variations_on_article_id"
  end

  add_foreign_key "articles", "blogs"
  add_foreign_key "stats", "variations"
  add_foreign_key "variations", "articles"
end
