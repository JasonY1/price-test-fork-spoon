require 'spec_helper'

RSpec.describe ProfilesController, type: :controller do
  describe "GET 'new'" do
    context "with user logged-in" do
      let(:user) { create(:user)}
      
      context "no profile" do
        before do
          get :new
        end
        it { expect(response.status).to eq(302) }
      end
    end
  end
end