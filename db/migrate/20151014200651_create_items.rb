class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :desc
      t.integer :price
      t.integer :inv_qty

      t.timestamps null: false
    end
  end
end
