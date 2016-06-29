# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :text
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  validates :name, :phone, presence: true
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
       item.cart_id = nil
       line_items << item
     end
   end
end
