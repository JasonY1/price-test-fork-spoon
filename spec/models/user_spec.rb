require 'spec_helper'

describe User do
  describe "Create a user" do
    context "With valid information" do
      @user = create(:user)
      it { expect(User.count).to eq(1)}
      it { expect(User.save).to be_true }
    end
  end
end