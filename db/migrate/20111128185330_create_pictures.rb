class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :id
      t.string :name
      t.string :location
      t.text :description
      
      t.timestamps
    end
  end
end
