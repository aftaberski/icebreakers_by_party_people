require_relative '../spec_helper'

class HomeSpec
  describe 'home' do

    category = Category.create(name:"Funny")
    subcategory = Subcategory.create(name:"Punny", category: category)
    user = User.create(name: "Gary", email: "gary@gary.com", password: "gary")
    quote = Quote.create(text: "I like cats", user: user, subcategory: subcategory)

    it 'should respond to /categories' do
      get '/categories', {}, {'rack.session' =>  { :user => user.id } }
      expect(last_response).to be_ok
    end
  end
end

class UserSpec
  describe 'users' do
    let(:user) { User.create(name: "Jim", email: "jim@jim.com", password: "jim")}

      before do
        user
      end

      it 'should respond to /signup' do
      post '/signup', params={ user: {name: "Alan", email: "alan@alan.com", password: "alan"}}
      expect(last_response).to be_redirect
    end

    it 'should respond to /login' do
      post '/login', params={ user: {name: "Jim", email: "jim@jim.com", password: "jim"}}
      expect(last_response).to be_redirect
    end
  end
end
