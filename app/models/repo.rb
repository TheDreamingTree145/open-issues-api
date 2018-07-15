class Repo < ApplicationRecord
  include HTTParty
  
  GITHUB_API = ENV["GITHUB_API"]
  
  def self.get_repos(page)
    response = HTTParty.get("https://api.github.com/users/learn-co-curriculum/repos?per_page=100&type=owner&page=#{page}&access_token=#{GITHUB_API}")
    if !!response && !!response[0]["name"]
      response.each do |repo|
        if repo["has_issues"] == true
          repository = self.find_or_create_by(name: repo["name"])
          repository.open_issues = repo["has_issues"]
          repository.pulls_url = repo["pulls_url"]
          binding.pry
          pull_response = HTTParty.get("https://api.github.com/users/learn-co-curriculum/repos?per_page=100&type=owner&page=#{page}&access_token=#{GITHUB_API}")
        end
      end
      self.get_repos(page + 1)
    end
  end
end
