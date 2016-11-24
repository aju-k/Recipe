class CreateBankDetails < ActiveRecord::Migration
  def change
    create_table :bank_details do |t|
      t.string :bank_name
      t.text :address
      t.string :pincode
      t.string :latitude
      t.string :longitude
      t.string :status
      t.timestamps
    end
  end
end
