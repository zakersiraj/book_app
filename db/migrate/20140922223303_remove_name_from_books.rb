class RemoveNameFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :name, :string
  end
end
