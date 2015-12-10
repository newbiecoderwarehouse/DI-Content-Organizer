class AddApproveToTypography < ActiveRecord::Migration
  def change
    add_column :typographies, :approve, :string, default:"no"
  end
end
