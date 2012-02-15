class Page < ActiveRecord::Base
  belongs_to :task
  
  validates_attachment_content_type :page_image, :content_type => 'image/jpeg'
  
  has_attached_file :page_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  
end
