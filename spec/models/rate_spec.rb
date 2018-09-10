require 'rails_helper'

RSpec.describe Rate, type: :model do
  describe 'validation rate' do
    it { should validate_presence_of :rate }
    it { should validate_numericality_of(:rate).is_greater_than(0) }
    it { should allow_values(1, 0.1, 9.999).for(:rate) }
    it { should_not allow_value(-1).for(:rate) }
    it { should_not allow_value(nil).for(:rate) }
  end
end
