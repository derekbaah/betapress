class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 20}
  validates :content, presence: true 
  
  has_many :post_categories
	has_many :categories , through: :post_categories
  has_many :comments
  
  mount_uploader :featureimage, FeatureimageUploader
end
