class RemovePasswordDigestFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :password_digest, :string
  end
end
