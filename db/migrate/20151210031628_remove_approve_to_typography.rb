class RemoveApproveToTypography < ActiveRecord::Migration
  def change
    remove_column :typographies, :approve, :boolean
  end
end
