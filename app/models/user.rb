class User < ApplicationRecord
  has_one :job
  has_one :home
  has_many :user_dogs
  has_many :dogs, through: :user_dogs
  has_secure_password

  validates :username, uniqueness: true

  def job
    Job.find_by(id: self.job_id)
  end

  def home
    Home.find_by(id: self.home_id)
  end

  def assign_job_points
    points = 0
    x = Job.find(self.job_id).salary
    case x
    when x < 25000
      points += 1
    when x < 70000
      points += 2
    else
      points += 3
    end
    y = Job.find(self.job_id).num_hours_at_work
    case y
    when y < 7
      points += 3
    else
      points -= 3
    end
    points
  end

  def assign_home_points #to be edited
    points = assign_job_points
    x = Home.find(self.home_id)
    case x
    when x.apt_or_house.downcase == "apartment"
      points += 2
    else
      points += 4
    end
    y = Home.find(self.home_id)
    case y
    when y.city_or_suburb.downcase == "suburb"
      points += 4
    else
      points += 2
    end
    z = Home.find(self.home_id)
   case z
   when z.num_of_rooms < 2
      points += 1
    else
      points += 2
    end
    a = Home.find(self.home_id)
   case a
   when a.num_of_occupants < 2
      points += 1
    else
      points += 2
    end
    b = Home.find(self.home_id)
   case b
   when b.kids == false
      points += 1
    else
      points += 2
    end
    c = Home.find(self.home_id)
   case c
   when c.pets == false
      points += 1
    else
      points += 2
    end
    points
  end

  def get_list_of_dogs
    if (1 <= self.assign_home_points) && (self.assign_home_points <= 8)
      Dog.where("size = ? and (barking_level = ? or barking_level = ?)  and (energy_level = ? or energy_level = ?)", 's', 1, 2, 'Not very active','Somewhat active')

    elsif (8 <= self.assign_home_points) && (self.assign_home_points <= 14)
      Dog.where("(size = ? or size = ?) and (barking_level = ? or barking_level = ?)  and (energy_level = ? or energy_level = ?)", 's', 'm', 1, 2, 'Very active','Somewhat active')

    elsif (15 <= self.assign_home_points) && (self.assign_home_points <= 20)
      Dog.where("(energy_level = ? or energy_level = ?) and children_friendly =? ", 'Very active','Somewhat active', true)
    end
  end




end
