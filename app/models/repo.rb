class Repo < ApplicationRecord
  include HTTParty
  
  GITHUB_API = ENV["GITHUB_API"]
  
  def self.get_repos 
    response = HTTParty.get("https://api.github.com/users/learn-co-curriculum/repos?per_page=10000&type=owner&access_token=#{GITHUB_API}")
  end
end
