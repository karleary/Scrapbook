class CreatePictureTags < ActiveRecord::Migration
  def change
    create_table :picture_tags do |t|

      t.timestamps
    end
  end
end
