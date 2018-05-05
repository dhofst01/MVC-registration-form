class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.string :email
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
