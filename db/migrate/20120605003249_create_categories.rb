class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :ctf_id, null: false
      t.string :name, null: false, default: "Untitled"

      t.timestamps
    end
  end
end
