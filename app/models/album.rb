class Album < ActiveRecord::Base
  attr_accessible :description, :image

  validates :description, presence: :true
  validates_attachment :image, presence: true,
                        content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }
  
  has_many :photos, :dependent => :destroy
  has_attached_file :image, styles: { medium: "320x240>"}
end
