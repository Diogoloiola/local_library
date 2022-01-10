require 'rails_helper'


RSpec.describe BookInstance, type: :model do 
 it { should validate_presence_of(:due_back) }
 it { should validate_presence_of(:status) }
 it { should validate_presence_of(:imprint) }

end