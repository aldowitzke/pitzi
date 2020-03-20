require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  context "when user is valid" do
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_uniqueness_of(:cpf).case_insensitive }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { should have_one(:order) }
  end
end
