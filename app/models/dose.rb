class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail, :scope => [:ingredient] #garante que o par cocktail e ingredient é único
end

#garante que o par cocktail e ingredient é único, outra forma de escrever: validates :cocktail, uniqueness: { scope: :ingredient }