module Meetup
  class Groups
    include HTTParty

    base_uri 'https://api.meetup.com'
    def initialize(user_id, token)
      @user_id = user_id
      @token = token
    end

    def all
      grps =  self.class.get "/2/groups/?member_id=#{@user_id}", :headers => { "Authorization" => "bearer #{@token}" }
      grps["results"].collect{|grp| grp["name"]}
    end
  end
end