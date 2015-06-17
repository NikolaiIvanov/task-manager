class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i },
            uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, confirmation: true
  validates :password_confirmation, presence: true
end