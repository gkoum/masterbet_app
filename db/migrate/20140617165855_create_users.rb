class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :shopnumber
      t.string :phone
      t.string :mobile

      t.timestamps
    end
  end
end
