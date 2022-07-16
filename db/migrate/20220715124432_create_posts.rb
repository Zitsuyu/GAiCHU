class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :detail, null:false
      t.integer :size_id, null:false
      t.integer :place_id, null:false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
