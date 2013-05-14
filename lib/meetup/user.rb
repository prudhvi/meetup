module Meetup
  class User < Base
    def profile
      self.class.get "/2/member/#{user_id}", :headers => { "Authorization" => "bearer #{token}" }
    end
  end
end