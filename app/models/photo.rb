class Photo < ActiveRecord::Base
  attr_accessible :description, :album_id, :image
 
  validates :album_id, presence: true
  validates :description, presence: :true
  validates_attachment :image, presence: true,
                        content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }

  belongs_to :album
  has_attached_file :image, styles: { medium: "320x240>"}
end
