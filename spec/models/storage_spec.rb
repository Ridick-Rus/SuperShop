require "rails_helper"

RSpec.describe Storage, type: :model do
  describe "validations" do
    subject { build(:storage) }

    let(:invalid_amount) { -10 }

    it { is_expected.to belong_to(:product) }

    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:product_id) }
    it { is_expected.to validate_uniqueness_of(:product_id) }
    it { is_expected.not_to allow_value(invalid_amount).for(:amount) }
  end
end
