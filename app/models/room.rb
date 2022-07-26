class Room < ApplicationRecord
 mount_uploader :img, ImgUploader
 belongs_to :user
end
