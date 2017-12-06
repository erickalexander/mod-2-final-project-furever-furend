class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs

  def salary
    
  end

  def workhours

  end

  def location

  end

  def location
  end

  def type

  end

  def numberofrooms
  end

  def kids

  end

  def pets

  end
end
