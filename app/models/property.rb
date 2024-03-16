class Property < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :title, :description, :price, :location, presence: :true
end
