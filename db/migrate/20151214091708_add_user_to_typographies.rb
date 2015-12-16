class AddUserToTypographies < ActiveRecord::Migration
  def change
    add_reference :typographies, :user, index: true, foreign_key: true
  end
end
