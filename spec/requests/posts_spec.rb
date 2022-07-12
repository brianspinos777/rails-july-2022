require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    # pending "add some examples (or delete) #{__FILE__}"

    it 'aaaa' do 
      get :index 
      expect(response).to be_success # same as:  response.success?  # this is not a question, haha
      # response.success?
    end

    it 'bbbb' do 
      user = Post.create!({firstName: 'aaa'})  # .create! --> creates and saves the user 
      get :show, params: { id: user.to_params }
      expect(response).to be_success
    end
  end
end
