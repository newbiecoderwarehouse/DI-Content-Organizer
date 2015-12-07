class CreateTypographies < ActiveRecord::Migration
  def change
    create_table :typographies do |t|
      t.string :title
      t.string :url
      t.string :source

      t.timestamps null: false
    end
  end
end
