class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.text :about
      t.string :gender
      t.string :role
      t.string :training
      t.string :experience

      t.timestamps
    end
    add_index :users, :email
  end
end
