class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs

  def assign_points(salary, home_type) #to be edited
    points = 0
    if home_type == "Apartment"
      points += 2
    else
      points += 4
    end
    if salary == "0-25k"
      points += 1
    elsif salary == "25k-50k"
      points += 2
    elsif salary == "50k+"
      points += 3
    end
    points
  end

  def get_list_of_dogs(salary, home_type)
    if (1 < self.assign_points(salary, home_type)) && (self.assign_points(salary, home_type) < 4)
      Dog.where(size: "s")
    elsif (5 < self.assign_points(salary, home_type)) && (self.assign_points(salary, home_type) < 7)
      Dog.where(size: "l")
    end
  end


end
