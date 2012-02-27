class CreateTagPictures < ActiveRecord::Migration
  def change
    create_table :tag_pictures do |t|
      t.integer :id
      t.integer :tag_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
