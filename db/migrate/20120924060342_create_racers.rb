class CreateRacers < ActiveRecord::Migration
  def change
    create_table :racers do |t|
      t.string :firstname
      t.string :lastname
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :gender
      t.date :dob
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :emergencyphone
      t.string :racerlevel

      t.timestamps
    end
  end
end
