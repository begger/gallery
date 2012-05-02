class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
      t.string :image
      t.belongs_to :photo_set

      t.timestamps
    end
  end
end
