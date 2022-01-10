require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date_of_birth) }
  it { should validate_presence_of(:date_of_death) }
  it { should have_many(:books) }
end
