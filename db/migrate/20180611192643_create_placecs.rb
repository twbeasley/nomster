class CreatePlacecs < ActiveRecord::Migration[5.0]
  def change
    create_table :placecs do |t|
      t.string :name
      t.text :description
      t.string :address
      t.timestamps
    end
  end
end
