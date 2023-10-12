require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    subject { FactoryBot.build(:user, email: valid_email, password: valid_password) }

    let(:valid_email) { "test@test.ru" }
    let(:invalid_email) { "test@test" }

    let(:valid_password) { "aaAA34623784627" }
    let(:invalid_password) { "aaaaaaaaaaaa" }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.not_to allow_value(invalid_email).for(:email) }

    it { is_expected.to validate_presence_of(:encrypted_password) }
    it { is_expected.not_to allow_value(invalid_password).for(:password) }
  end
end
