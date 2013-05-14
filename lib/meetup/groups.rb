module Meetup
  class Groups < Base
    def all
      grps =  self.class.get "/2/groups/?member_id=#{user_id}", :headers => { "Authorization" => "bearer #{token}" }
      grps["results"].collect{|grp| grp["name"]}
    end
  end
end