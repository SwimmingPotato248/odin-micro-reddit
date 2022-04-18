class User < ApplicationRecord
  has_many :post
  has_many :comment

  validates :username, :email, :password, presence: true
  validates :username, :password, length: { maximum: 20 }
  validates :username, :email, uniqueness: true
end
