class Album < ActiveRecord::Base
  attr_accessible :description

  has_many :photos, :dependent => :destroy
end
