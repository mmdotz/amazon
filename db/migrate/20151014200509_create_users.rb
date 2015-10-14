class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :admin, default: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end