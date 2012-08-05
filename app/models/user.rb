class User < ActiveRecord::Base
  has_many :microposts

  attr_accessible :email, :name

  validates :name,  :presence => true, 
                    :length => { :minimum => 1, :maximum => 254 }
                   
  validates :email, :presence => true, 
                    :length => { :minimum => 5, :maximum => 254 },
                    :uniqueness => true,
                    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
