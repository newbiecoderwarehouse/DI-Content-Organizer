class RemoveSourceToTypography < ActiveRecord::Migration
  def change
    remove_column :typographies, :source, :string
  end
end
