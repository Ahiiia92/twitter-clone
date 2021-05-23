class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :description

      t.timestamps
    end
  end
end
