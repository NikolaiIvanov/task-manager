class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, index: true, null: false, unique: true
      t.string :name
      t.string :crypted_password
      t.string :salt

      t.timestamps null: false
    end
  end
end
