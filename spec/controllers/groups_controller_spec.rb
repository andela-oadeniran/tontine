require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  # let(:group){ create(:group) }
  # let(:user){ create(:user) }

  describe 'GET groups' do
    context "when no groups exist" do
      it "returns no group" do
        get '/groups'
        expect(json).to be_empty
      end

      it "returns 200 as status code" do
        get '/groups'
        expect(response).to have_http_status(200)
      end
    end
  end
end

