require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "validations" do
    subject { build(:comment, commentable: create(:product)) }

    let(:invalid_body) { "a" * 2001 }

    it { is_expected.to validate_presence_of(:commentable_id) }
    it { is_expected.to validate_presence_of(:commentable_type) }
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.not_to allow_value(invalid_body).for(:body) }
  end
end
