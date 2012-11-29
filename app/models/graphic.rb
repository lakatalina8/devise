class Graphic < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>"},
                    :url  => "/assets/graphics/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/graphics/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
