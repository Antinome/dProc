class Task < ActiveRecord::Base
  validates :name,        :presence => true,
                          :length => { :minimum => 3}
  validates :description, :presence => true,
                          :length => { :minimum => 5 }
  has_many :pages, :dependent => :destroy        
  
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }          
                          
end
