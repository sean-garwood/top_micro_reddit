class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 16 }
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  has_many :posts
  has_many :comments, through: :posts
end
