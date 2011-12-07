class Picture < ActiveRecord::Base
  has_many :tag_pictures
  has_many :tags, :through => :tag_pictures
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>", :small => "150x15" },
                    :url  => "/assets/pictures/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
   attr_accessor :photo_file_name
   attr_accessor :photo_content_type
   attr_accessor :photo_file_size
   attr_accessor :photo_updated_at




end
