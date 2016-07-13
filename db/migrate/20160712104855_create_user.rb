class CreateUser < ActiveRecord::Migration
  def change
      create_table :users do |u|
      u.string :usuario, :unique => true #establece su unicidad en la base de datos
      u.string :mail,  :unique => true
      u.string :password_digest
      u.timestamps
    end
  end
end
