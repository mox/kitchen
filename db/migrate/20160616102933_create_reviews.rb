class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.string :company_name, default: ""
      t.string :email, default: ""
      t.boolean :is_public, default: false

      t.timestamps null: false
    end
  end
end
