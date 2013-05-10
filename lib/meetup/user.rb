module Meetup
  class User
    include HTTParty

    base_uri 'https://api.meetup.com'
    def initialize(user_id, token)
      @user_id = user_id
      @token = token
    end

    def profile
      self.class.get "/2/member/#{@user_id}", :headers => { "Authorization" => "bearer #{@token}" }
    end
  end
end