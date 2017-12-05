class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs
end
