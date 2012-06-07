class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :category_id, null: false
      t.integer :points
      t.text :description
      t.string :status, null: false, default: "closed"
      t.string :name

      t.timestamps
    end
  end
end
