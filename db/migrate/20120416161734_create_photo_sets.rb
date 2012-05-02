class CreatePhotoSets < ActiveRecord::Migration
  def change
    create_table :photo_sets do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
