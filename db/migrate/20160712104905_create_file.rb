class CreateFile < ActiveRecord::Migration
  def change
    create_table :photos do |f|
      f.belongs_to :user, index: true
      f.string :photo
      f.timestamp
    end
  end
end
