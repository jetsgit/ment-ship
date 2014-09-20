class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :content
      t.string :revision
      t.integer :creator_id
      t.time :created_at

      t.timestamps
    end
  end
end
