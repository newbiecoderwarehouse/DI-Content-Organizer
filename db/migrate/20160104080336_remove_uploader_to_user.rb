class RemoveUploaderToUser < ActiveRecord::Migration
  def change
    remove_column :users, :uploader, :boolean
  end
end
