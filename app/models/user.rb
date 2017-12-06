class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs

  validates :username, uniqueness: true

  # def assign_job_points
  #   points = 0
  #   x = params[:user][:job][:salary]
  #   case x
  #   when x < 25000
  #     points += 1
  #   when x < 50000
  #     points += 2
  #   else
  #     points += 3
  #   end
  #   y = params[:user][:job][:num_hours_at_work]
  #   case y
  #   when if y < 7
  #     points += 3
  #   else
  #     points -= 3
  #   end
  #   points = 0 if points < 0
  #   points
  # end
  #
  # def assign_home_points #to be edited
  #   points =
  #   if params[:user][:home][].downcase == "Apartment"
  #     points += 2
  #   else
  #     points += 4
  #   end
  #   if city_or_suburb.downcase == "suburb"
  #     points += 4
  #   else
  #     points += 2
  #   end
  #   if num_of_rooms < 0
  #     points += 1
  #   elsif num_of_rooms > 2
  #     points += 2
  #   end
  #   points
  # end
  #
  # def get_list_of_dogs
  #   if (1 < self.assign_home_points) && (self.assign_home_points < 4)
  #     Dog.where(size: "s")
  #   elsif (5 < self.assign_home_points) && (self.assign_home_points < 7)
  #     Dog.where(size: "l")
  #   end
  # end


end
