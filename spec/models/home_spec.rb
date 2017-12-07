require 'rails_helper'

RSpec.describe Home, type: :model do

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

  it 'chooses city or suburb' do
    expect(home.city_or_suburb).to eq('city')
  end

  it 'chooses apartment or house' do
    expect(home.apt_or_house).to eq('house')
  end

  it "gives number of rooms as integer" do
    expect(home.num_of_rooms).to eq(1)
  end

  it "gives number of occupants as integer" do
    expect(home.num_of_occupants).to eq(2)
  end

  it "gives a boolean value for kids" do
    expect(home.kids).to eq(true)
  end

  it "gives a boolean value for pets" do
    expect(home.pets).to eq(false)
  end

  it "belongs to a user" do
    expect(home.user_id).to eq(kat.id)
  end


end
