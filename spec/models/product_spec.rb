require "rails_helper"

RSpec.describe Product, type: :model do
  describe "validations" do
    subject { build(:product) }

    let(:invalid_price) { -10 }

    it { is_expected.to have_one(:storage) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_length_of(:description) }
    it { is_expected.not_to allow_value(invalid_price).for(:price) }
  end
end
