class Micropost < ActiveRecord::Base
  belongs_to :user

  attr_accessible :content, :user_id

  validates :content,  :presence => true, 
                       :length => { :maximum => 140 }
end
