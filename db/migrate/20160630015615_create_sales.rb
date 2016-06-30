class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :title
      t.text :description
      t.boolean :is_public
      t.string :image

      t.timestamps null: false
    end
  end
end
