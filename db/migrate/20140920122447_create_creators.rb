class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :fname
      t.string :lname
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.string :resume

      t.timestamps
    end
  end
end
