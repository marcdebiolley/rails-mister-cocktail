class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :ingredient, dependent: :destroy
  belongs_to :cocktail
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
