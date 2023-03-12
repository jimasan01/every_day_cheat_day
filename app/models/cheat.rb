class Cheat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  #ActiveHashのアソシエーション
  belongs_to :category
  belongs_to :area
  belongs_to :volume
  belongs_to :price

  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :explanation
    validates :city
    validates :house_number
    validates :image
  end

  with_options numericality: { other_than: 1} do
    validates :category_id
    validates :area_id
    validates :volume_id
    validates :price_id
  end

end
