module Meetup
  class Base
    include HTTParty
    base_uri 'https://api.meetup.com'

    attr_reader :user_id, :token
    def initialize(user_id, token)
      @user_id = user_id
      @token = token
    end
  end
end