class AddPasswordDigestToBooks < ActiveRecord::Migration
  def change
    add_column :books, :password_digest, :string
  end
end
