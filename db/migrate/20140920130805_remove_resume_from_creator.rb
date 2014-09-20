class RemoveResumeFromCreator < ActiveRecord::Migration
  def change
    remove_column :creators, :resume, :string
  end
end
