class Typography < ActiveRecord::Base
  belongs_to :user 
  mount_uploader :image, ImageUploader 
  # Found at app/uploaders/image_uploader.rb
end
