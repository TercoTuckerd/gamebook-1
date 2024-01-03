class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.integer    :battle_a,     null: false
      t.integer    :battle_b,     null: false
      t.integer    :battle_c,     null: false
      t.integer    :battle_d,     null: false
      t.integer    :battle_e,     null: false
      t.integer    :battle_f,     null: false
      t.integer    :battle_g,     null: false
      t.integer    :battle_h,     null: false
      t.integer    :battle_i,     null: false
      t.integer    :battle_j,     null: false
      t.integer    :hp,           null: false
      t.integer    :tek,          null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end