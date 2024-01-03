class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.text       :story,    null: false
      t.integer    :coin,     null: false
      t.integer    :item,     null: false
      t.integer    :page_1,     null: false
      t.integer    :page_2,     null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end