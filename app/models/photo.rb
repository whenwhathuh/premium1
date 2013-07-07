class Photo < ActiveRecord::Base
  attr_accessible :description, :album_id

  belongs_to :album
  validates :album_id, presence: true
end
