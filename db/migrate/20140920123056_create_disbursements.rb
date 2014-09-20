class CreateDisbursements < ActiveRecord::Migration
  def change
    create_table :disbursements do |t|
      t.integer :creator_id
      t.integer :grant_id
      t.decimal :amount
      t.text :description
      t.text :obligations
      t.time :award_start_date
      t.time :award_end_date

      t.timestamps
    end
  end
end
