class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs

  validates :username, uniqueness: true

  def assign_job_points
    points = 0
    x = params[:user][:job][:salary]
    case x
    when x < 25000
      points += 1
    when x < 70000
      points += 2
    else
      points += 3
    end
    y = params[:user][:job][:num_hours_at_work]
    case y
    when if y < 7
      points += 3
    else
      points -= 3
    end
    points
  end

  def assign_home_points #to be edited
    points =
    if params[:user][:home][:type].downcase == "apartment"
      points += 2
    else
      points += 4
    end
    if params[:user][:home][:location].downcase == "suburb"
      points += 4
    else
      points += 2
    end
    if params[:user][:home][:num_of_rooms] < 2
      points += 1
    else
      points += 2
    end
    if params[:user][:home][:num_of_occupants] < 2
      points += 1
    else
      points += 2
    end

    if params[:user][:home][:kids] == false
      points += 1
    else
      points += 2
    end

    if params[:user][:home][:pets] == false
      points += 1
    else
      points += 2
    end
    points
  end

  def get_list_of_dogs
    if (1 < self.assign_home_points) && (self.assign_home_points < 8)
      Dog.where(size: "s" AND children_friendly: false AND dog_friendly: false AND barking_level: 1 AND energy_level: 'Not Very Active' || 'Somewhat Active' )
      Dog.where("(size = ? or size = ?) and children_friendly = ?", 's','m', false)

    elsif (8 < self.assign_home_points) && (self.assign_home_points < 14)
      Dog.where(size: "s" || "m" AND children_friendly: true AND dog_friendly: false AND barking_level: 1 || 2 AND energy_level:'Somewhat Active' )
    elsif (14 < self.assign_home_points) && (self.assign_home_points < 20)
      Dog.where(size: "s" || "m" || "l" AND children_friendly: true || false AND dog_friendly: true || false AND barking_level: 2 || 3 AND energy_level:'Somewhat Active' || 'Very Active' )
    end
  end


end
