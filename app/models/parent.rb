class Parent < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :phone1, :phone2

  has_many :racers

  validates :firstname, :length => { :maximum => 45, :minimum => 2 }
  validates :lastname, :length => { :maximum => 45, :minimum => 2 }
  validates :phone1, :length => { :maximum => 12, :minimum => 7 }

end
