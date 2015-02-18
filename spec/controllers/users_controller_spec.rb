require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }

  describe "GET #show" do
    context "when not logged in" do
      before { get :show, id: user.id }
      it { expect(response.status).to eq(302) }
      it { expect(response).to redirect_to('/register/sign_in') }
    end
    
    context "when logged-in" do
      login_user
      before { get :show, id: user.id }
      it { expect(response.status).to eq(200)}
      it { expect(response).to be_success }
    end
  end

  describe "GET #new" do
    context "when not logged-in" do
      before { get :new, id: user.id }
      it { expect(response.status).to eq(302) }
      it { expect(response).to redirect_to('/register/sign_in') }
    end

    context "when logged-in" do
      login_user
      before { get 'new', id: user.id }
      it { expect(response.status).to eq(302) }
      # This redirects to root when register/sign_in is not permitted
      it { expect(response).to redirect_to('/register/sign_in')}
    end
  end
end
