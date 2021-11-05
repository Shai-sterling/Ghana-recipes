class Recipe < ApplicationRecord

    has_one_attached :image

    validates :title, presence: true
    validates :name, presence: true
    validates :description, presence: true
end
