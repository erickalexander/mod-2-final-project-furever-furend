require 'rails_helper'

RSpec.describe Job, type: :model do

  let(:home) do
    Home.create(
      city_or_suburb: 'city',
      apt_or_house: 'house',
      num_of_rooms: 1,
      num_of_occupants: 2,
      kids: true,
      pets: false,
      user_id: kat.id
    )
  end


  let(:jobs) do
    Job.create(
      num_hours_at_work: 6,
      salary: 30000
    )
  end

  let(:kat) {User.create(username: 'kpop', password_digest: 'beef')}

  it 'hours at work is an integer' do
    expect(jobs.num_hours_at_work).to eq(6)
  end

  it 'salary is an integer' do
    expect(jobs.salary).to eq(30000)
  end

end
