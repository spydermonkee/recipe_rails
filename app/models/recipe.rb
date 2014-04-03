class Recipe < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :instructions, presence: true
  has_and_belongs_to_many :tags
end
