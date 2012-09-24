class Racer < ActiveRecord::Base
  attr_accessible :city, :dob, :email, :emergencyphone, :firstname, :gender, :lastname, :phone1, :phone2, :racerlevel, :state, :street1, :street2, :zipcode
end
