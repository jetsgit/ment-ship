class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :name
      t.string :organization
      t.string :email
      t.string :phone
      t.string :contact_fname
      t.string :contact_lname
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.string :fund_type
      t.string :app_process
      t.time :app_deadline

      t.timestamps
    end
  end
end
