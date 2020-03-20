require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:user) { build(:user) }
  let(:order) { build(:order, user_id: user.id) }

  context "when order is valid" do
    it { is_expected.to validate_presence_of(:imei) }
    it { is_expected.to validate_presence_of(:device) }
    it { is_expected.to validate_presence_of(:price) }
    it { should belong_to(:user) }
  end
end
