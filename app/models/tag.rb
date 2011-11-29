class Tag < ActiveRecord::Base
  has_many :tag_pictures
   has_many :pictures, :through =>  :tag_pictures
end
