class AddImgToTypographies < ActiveRecord::Migration
  def change
    add_column :typographies, :image, :string
  end
end
