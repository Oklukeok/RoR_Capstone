class User < ApplicationRecord
    has_many :entity, foreign_key: :name
    has_many :group, foreign_key: :icon

    validates :name, length: { maximum: 80 }, presence: true
end
