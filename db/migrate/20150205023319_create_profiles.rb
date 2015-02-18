class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :statename
      t.string :zipcode
      t.date   :birthdate
      t.string :phonenum
      t.string :prescription_card
      t.string :prescription_num
      t.string :prescription_exp
      t.boolean :verified,          default: false
      t.string :idcard
      
      t.timestamps
    end
  end
end
