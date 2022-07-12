require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'context A' do 

    let!(:params){  # variable `params`   # let! --> will run each time before each test
      {firstName: 'aaa', lastName: 'bbb'}
    }

    let(:params){  # variable `params`
      {firstName: 'aaa', lastName: 'bbb'}
    }

    before(:each) do 
        Post.new(params).save
        Post.new(params.merge({anotherField: 'ccc'})).save
    end

    it 'does something' do
        user = User.new(name: 'brian').save
        expect(user).to eq(false) # because it did not save
    end

    it 'does another thing' do
        expect(1 + 1).to eq(2)
        expect(User.foo).to eq(123)
    end
  end

  context 'context B' do 
    it 'does something' do
      expect(1 + 1).to eq(2)
    end
  end
end
