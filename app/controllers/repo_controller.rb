class RepoController < ApplicationController
  
  def start 
    Repo.get_repos(1)
  end
end
