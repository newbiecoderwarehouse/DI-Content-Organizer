class RemoveUrlToTypography < ActiveRecord::Migration
  def change
    remove_column :typographies, :url, :string
  end
end
