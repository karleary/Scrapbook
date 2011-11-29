class Picture < ActiveRecord::Base
  has_many :tag_pictures
  has_many :tags, :through => :tag_pictures
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
