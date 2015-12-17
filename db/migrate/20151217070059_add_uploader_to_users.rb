class AddUploaderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uploader, :boolean, default: true
  end
end
