class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :doses

  before_destroy :check_for_cocktails

  def check_for_cocktails
    unless self.doses.empty?
      raise ActiveRecord::InvalidForeignKey
    end
  end

end
