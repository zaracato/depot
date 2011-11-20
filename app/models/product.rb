class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness:true, :length => {:maximum => 30 , message: "the title can't be long than ten characters"}
  validates :image_url, allow_blank: true, format:{
      with: %r{\.(gif|jpg|png)$}i,
      message: 'must be a URL for GIF, JPG or PNG image'
  }
end
