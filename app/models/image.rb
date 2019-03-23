class Image < ApplicationRecord
  mount_uploader :asset, AssetUploader
end
