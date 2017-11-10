class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :account
      t.string :password
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
