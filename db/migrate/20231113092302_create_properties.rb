class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description
      t.string :name
      t.string :category
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
