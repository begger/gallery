class AddExtrasToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string

    add_column :users, :avatar, :string

    add_column :users, :data, :binary

  end
end
