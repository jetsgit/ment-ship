class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :summary
      t.time :submitted
      t.time :created_at

      t.timestamps
    end
  end
end
