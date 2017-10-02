class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient_id }
  validates :ingredient, presence: true

  belongs_to :ingredient
  belongs_to :cocktail
end
