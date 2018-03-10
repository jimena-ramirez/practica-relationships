class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :marca, foreign_key: true

      t.timestamps
    end
  end
end
