class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone1
      t.string :phone2

      t.timestamps
    end
  end
end
