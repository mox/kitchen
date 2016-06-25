# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_new      :boolean          default(FALSE)
#  is_sale     :boolean          default(FALSE)
#  is_hot      :boolean          default(FALSE)
#  is_public   :boolean          default(FALSE)
#  category    :string
#

class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  scope :is_public, -> { where(is_public: true) }
  
  # scope :is_new, -> { where(is_new: true) }
  # scope :is_hot, -> { where(is_hot: true) }
  # scope :is_public, -> { where(is_public: true) }

  CATEGORIES = [ 'Первое блюдо', "Второе блюдо", "Роллы/сеты", "Напиток" ].freeze
  
  private
    # убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
    def ensure_not_referenced_by_any_line_item
        if line_items.empty?
      return true
        else
            errors.add(:base, 'существуют товарные позиции')
            return false
        end
    end
end
