class Restaurant < ApplicationRecord

  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :phone_number, presence: true, format: { with: /\d{2} ?\d{2} ?\d{2} ?\d{2} ?\d{2} ?/}

end
