class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :entity, foreign_key: :name 
  has_many :group, foreign_key: :name 

  validates :name, length: { maximum: 80 }, presence: true
end
