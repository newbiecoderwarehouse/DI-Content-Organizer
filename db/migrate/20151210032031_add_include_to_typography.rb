class AddIncludeToTypography < ActiveRecord::Migration
  def change
    add_column :typographies, :include, :string, default: "no"
  end
end
