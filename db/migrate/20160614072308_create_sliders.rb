class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :image_url
      t.boolean :is_public
      t.integer :weight

      t.timestamps null: false
    end
  end
end
