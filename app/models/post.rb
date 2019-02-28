class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :content, presence: true, length: {minimum: 3, maximum: 10000000000000000} 
  #validates :categories, presence: true 
  
  has_many :post_categories
	has_many :categories , through: :post_categories
  has_many :comments
  belongs_to :user
  
  acts_as_votable
  
  mount_uploader :featureimage, FeatureimageUploader
end
