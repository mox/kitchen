class AddIsNewAndIsSaleAndIsHotToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_new, :boolean, :default => false
    add_column :products, :is_sale, :boolean, :default => false
    add_column :products, :is_hot, :boolean, :default => false
    add_column :products, :is_public, :boolean, :default => false
  end
end
