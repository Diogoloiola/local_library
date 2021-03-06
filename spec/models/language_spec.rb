require 'rails_helper'

RSpec.describe Language, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:books) }
end
